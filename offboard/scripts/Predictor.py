from keras.layers import Dense, Flatten, Input, merge, Lambda,Conv1D,LSTM
from keras.initializers import normal, identity
from keras.initializers import VarianceScaling
from keras.models import model_from_json
from keras.models import Sequential, Model
from collections import deque
import keras.backend as K
import tensorflow as tf
import numpy as np
import json
import traceback

class StateNetwork:
	def __init__(self,isize,qsize):
		self.qstates=deque(np.zeros(qsize))
		self.qinputs=deque(np.zeros(isize))
		self.isize=isize
		self.qsize=qsize
		self.buildmodel()
		self.tau=0.05
		self.step=0
		print("Now we load the weight")
		#return 
		try:
			self.inst_model.load_weights("inst.h5")
			self.target_model.load_weights("target.h5")
			print("Weight load successfully")
		except:
			print("Cannot find the weight")

	def train(self,u,s):
		u=np.expand_dims(u,axis=2)
		return self.inst_model.train_on_batch(u,s) 

	def target_train(self):
		weights=self.inst_model.get_weights()
		target_weight=self.target_model.get_weights()
		for i in xrange(len(weights)):
			target_weight[i]=weights[i]*self.tau+target_weight[i]*(1-self.tau)
		self.target_model.set_weights(target_weight)

	def savemodel(self):
		self.inst_model.save_weights('inst.h5',overwrite=True)
		with open("inst.json", "w") as outfile:
			json.dump(self.inst_model.to_json(), outfile)
		self.target_model.save_weights('target.h5',overwrite=True)
		with open("target.json", "w") as outfile:
			json.dump(self.target_model.to_json(), outfile)

	def buildmodel(self):
		u=Input(shape=[self.isize+self.qsize])
		model=Sequential()
		model.add(Conv1D(16,3,activation='tanh',input_shape=(self.isize+self.qsize,1)))
		model.add(Conv1D(16,3,activation='relu'))
		model.add(Flatten())
		model.add(Dense(16,activation='tanh'))
		model.add(Dense(1,activation='linear'))
		#s=Dense(shape=self.size,activation='tanh',init=lambda shape:VarianceScaling(scale=1e-4)(shape))(h1)
		model.compile(optimizer='adam',
			loss='mse')
		return model, model.trainable_weights, u
	def mean_absolute_percentage_error(self,y_true, y_pred):
		diff = K.abs((y_true - y_pred) / K.clip(K.abs(y_true), K.epsilon(), np.inf))
		return 100. * K.max(diff, axis=-1)


class LSR:
	def __init__(self,qsize,isize):
		self.qstates=deque(np.zeros(qsize))
		self.qinputs=deque(np.zeros(isize))
		self.isize=isize
		self.qsize=qsize
		self.buildmodel()
		self.step=0
		self.tau=0.05


	def buildmodel(self):
		# declare graph inputs
		self.x_train = tf.placeholder(tf.float32, shape=(None, self.isize+self.qsize+1))
		self.y_train = tf.placeholder(tf.float32, shape=(None, 1))
		x_test = tf.placeholder(tf.float32, shape=(None, self.isize+self.qsize+1))
		y_test = tf.placeholder(tf.float32, shape=(None, 10))
		self.theta = tf.Variable([[0.0] for _ in range(self.isize+self.qsize+1)])

		# forward propagation
		self.train_prediction = tf.matmul(self.x_train, self.theta)
		test_prediction  = tf.matmul(x_test, self.theta)
		# cost function and optimizer
		self.train_cost = tf.nn.l2_loss(self.train_prediction - self.y_train)
		self.optimizer = tf.train.GradientDescentOptimizer(1e-5).minimize(self.train_cost)
		# test results
		#test_cost = (tf.nn.l2_loss(test_prediction - y_test)+LAMBDA*tf.nn.l2_loss(theta))/float(_test_size)

		# run the computation
		self.sess=tf.Session()
		with self.sess.as_default():
			self.sess.run(tf.initialize_all_variables())
			print("initialized"); 
			try:
				saver = tf.train.Saver(tf.global_variables())
				module_file = tf.train.latest_checkpoint('./my-model')
				print(module_file)
				saver.restore(self.sess,'/home/chengque/workspace/catkin_ws/src/offboard/scripts/my-model-0')
				print(self.theta.eval())
			except:
				traceback.print_exc()
				pass


	def train(self,train_data,train_labels):
		#print train_data
		#print train_labels
		#print self.theta
		with self.sess.as_default():
			_, train_c= self.sess.run([self.optimizer,self. train_cost],feed_dict={self.x_train: train_data, self.y_train: train_labels})
			self.step=self.step+1
			if (self.step%100==0):
				# it should return bias close to zero and parameters all close to 1 (see definition of f)
				print("\nAfter", self.step, "iterations:")
				#print("   Bias =", theta_0.eval(), ", Weights = ", theta.eval())
				print("   train cost =", train_c); 
				saver = tf.train.Saver(tf.global_variables())
				saver.save(self.sess,'./my-model', global_step=0)
				#print(self.theta.eval())

			return train_c
	def predict(self,train_data):
		with self.sess.as_default():
			return self.sess.run(self.train_prediction,feed_dict={self.x_train:train_data})
