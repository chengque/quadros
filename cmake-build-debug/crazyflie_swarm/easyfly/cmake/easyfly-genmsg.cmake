# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "easyfly: 13 messages, 3 services")

set(MSG_I_FLAGS "-Ieasyfly:/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(easyfly_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/GenericLogData.msg" NAME_WE)
add_custom_target(_easyfly_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "easyfly" "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/GenericLogData.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/pos_ctrl_sp.msg" NAME_WE)
add_custom_target(_easyfly_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "easyfly" "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/pos_ctrl_sp.msg" "geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/pos_est.msg" NAME_WE)
add_custom_target(_easyfly_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "easyfly" "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/pos_est.msg" "geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/srv/Learning.srv" NAME_WE)
add_custom_target(_easyfly_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "easyfly" "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/srv/Learning.srv" ""
)

get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/srv/UpdateParams.srv" NAME_WE)
add_custom_target(_easyfly_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "easyfly" "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/srv/UpdateParams.srv" ""
)

get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/pos_est_test.msg" NAME_WE)
add_custom_target(_easyfly_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "easyfly" "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/pos_est_test.msg" "geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/att_est.msg" NAME_WE)
add_custom_target(_easyfly_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "easyfly" "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/att_est.msg" "geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/raw_ctrl_sp.msg" NAME_WE)
add_custom_target(_easyfly_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "easyfly" "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/raw_ctrl_sp.msg" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/commands.msg" NAME_WE)
add_custom_target(_easyfly_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "easyfly" "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/commands.msg" ""
)

get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/trj_ctrl_sp.msg" NAME_WE)
add_custom_target(_easyfly_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "easyfly" "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/trj_ctrl_sp.msg" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/output.msg" NAME_WE)
add_custom_target(_easyfly_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "easyfly" "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/output.msg" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/Recording.msg" NAME_WE)
add_custom_target(_easyfly_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "easyfly" "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/Recording.msg" "geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/vicon_markernum.msg" NAME_WE)
add_custom_target(_easyfly_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "easyfly" "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/vicon_markernum.msg" ""
)

get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/LogBlock.msg" NAME_WE)
add_custom_target(_easyfly_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "easyfly" "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/LogBlock.msg" ""
)

get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/iteration_errs.msg" NAME_WE)
add_custom_target(_easyfly_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "easyfly" "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/iteration_errs.msg" ""
)

get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/srv/Swarm_Add.srv" NAME_WE)
add_custom_target(_easyfly_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "easyfly" "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/srv/Swarm_Add.srv" "easyfly/LogBlock"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/GenericLogData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easyfly
)
_generate_msg_cpp(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/pos_ctrl_sp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easyfly
)
_generate_msg_cpp(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/pos_est.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easyfly
)
_generate_msg_cpp(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/pos_est_test.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easyfly
)
_generate_msg_cpp(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/att_est.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easyfly
)
_generate_msg_cpp(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/raw_ctrl_sp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easyfly
)
_generate_msg_cpp(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/commands.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easyfly
)
_generate_msg_cpp(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/trj_ctrl_sp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easyfly
)
_generate_msg_cpp(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/output.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easyfly
)
_generate_msg_cpp(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/Recording.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easyfly
)
_generate_msg_cpp(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/vicon_markernum.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easyfly
)
_generate_msg_cpp(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/LogBlock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easyfly
)
_generate_msg_cpp(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/iteration_errs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easyfly
)

### Generating Services
_generate_srv_cpp(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/srv/UpdateParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easyfly
)
_generate_srv_cpp(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/srv/Learning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easyfly
)
_generate_srv_cpp(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/srv/Swarm_Add.srv"
  "${MSG_I_FLAGS}"
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/LogBlock.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easyfly
)

### Generating Module File
_generate_module_cpp(easyfly
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easyfly
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(easyfly_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(easyfly_generate_messages easyfly_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/GenericLogData.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_cpp _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/pos_ctrl_sp.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_cpp _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/pos_est.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_cpp _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/srv/Learning.srv" NAME_WE)
add_dependencies(easyfly_generate_messages_cpp _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/srv/UpdateParams.srv" NAME_WE)
add_dependencies(easyfly_generate_messages_cpp _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/pos_est_test.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_cpp _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/att_est.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_cpp _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/raw_ctrl_sp.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_cpp _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/commands.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_cpp _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/trj_ctrl_sp.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_cpp _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/output.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_cpp _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/Recording.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_cpp _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/vicon_markernum.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_cpp _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/LogBlock.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_cpp _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/iteration_errs.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_cpp _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/srv/Swarm_Add.srv" NAME_WE)
add_dependencies(easyfly_generate_messages_cpp _easyfly_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(easyfly_gencpp)
add_dependencies(easyfly_gencpp easyfly_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS easyfly_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/GenericLogData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easyfly
)
_generate_msg_lisp(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/pos_ctrl_sp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easyfly
)
_generate_msg_lisp(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/pos_est.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easyfly
)
_generate_msg_lisp(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/pos_est_test.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easyfly
)
_generate_msg_lisp(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/att_est.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easyfly
)
_generate_msg_lisp(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/raw_ctrl_sp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easyfly
)
_generate_msg_lisp(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/commands.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easyfly
)
_generate_msg_lisp(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/trj_ctrl_sp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easyfly
)
_generate_msg_lisp(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/output.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easyfly
)
_generate_msg_lisp(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/Recording.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easyfly
)
_generate_msg_lisp(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/vicon_markernum.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easyfly
)
_generate_msg_lisp(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/LogBlock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easyfly
)
_generate_msg_lisp(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/iteration_errs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easyfly
)

### Generating Services
_generate_srv_lisp(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/srv/UpdateParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easyfly
)
_generate_srv_lisp(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/srv/Learning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easyfly
)
_generate_srv_lisp(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/srv/Swarm_Add.srv"
  "${MSG_I_FLAGS}"
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/LogBlock.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easyfly
)

### Generating Module File
_generate_module_lisp(easyfly
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easyfly
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(easyfly_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(easyfly_generate_messages easyfly_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/GenericLogData.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_lisp _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/pos_ctrl_sp.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_lisp _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/pos_est.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_lisp _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/srv/Learning.srv" NAME_WE)
add_dependencies(easyfly_generate_messages_lisp _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/srv/UpdateParams.srv" NAME_WE)
add_dependencies(easyfly_generate_messages_lisp _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/pos_est_test.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_lisp _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/att_est.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_lisp _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/raw_ctrl_sp.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_lisp _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/commands.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_lisp _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/trj_ctrl_sp.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_lisp _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/output.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_lisp _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/Recording.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_lisp _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/vicon_markernum.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_lisp _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/LogBlock.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_lisp _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/iteration_errs.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_lisp _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/srv/Swarm_Add.srv" NAME_WE)
add_dependencies(easyfly_generate_messages_lisp _easyfly_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(easyfly_genlisp)
add_dependencies(easyfly_genlisp easyfly_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS easyfly_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/GenericLogData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easyfly
)
_generate_msg_py(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/pos_ctrl_sp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easyfly
)
_generate_msg_py(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/pos_est.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easyfly
)
_generate_msg_py(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/pos_est_test.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easyfly
)
_generate_msg_py(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/att_est.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easyfly
)
_generate_msg_py(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/raw_ctrl_sp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easyfly
)
_generate_msg_py(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/commands.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easyfly
)
_generate_msg_py(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/trj_ctrl_sp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easyfly
)
_generate_msg_py(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/output.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easyfly
)
_generate_msg_py(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/Recording.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easyfly
)
_generate_msg_py(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/vicon_markernum.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easyfly
)
_generate_msg_py(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/LogBlock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easyfly
)
_generate_msg_py(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/iteration_errs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easyfly
)

### Generating Services
_generate_srv_py(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/srv/UpdateParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easyfly
)
_generate_srv_py(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/srv/Learning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easyfly
)
_generate_srv_py(easyfly
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/srv/Swarm_Add.srv"
  "${MSG_I_FLAGS}"
  "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/LogBlock.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easyfly
)

### Generating Module File
_generate_module_py(easyfly
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easyfly
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(easyfly_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(easyfly_generate_messages easyfly_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/GenericLogData.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_py _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/pos_ctrl_sp.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_py _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/pos_est.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_py _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/srv/Learning.srv" NAME_WE)
add_dependencies(easyfly_generate_messages_py _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/srv/UpdateParams.srv" NAME_WE)
add_dependencies(easyfly_generate_messages_py _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/pos_est_test.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_py _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/att_est.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_py _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/raw_ctrl_sp.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_py _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/commands.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_py _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/trj_ctrl_sp.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_py _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/output.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_py _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/Recording.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_py _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/vicon_markernum.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_py _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/LogBlock.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_py _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/iteration_errs.msg" NAME_WE)
add_dependencies(easyfly_generate_messages_py _easyfly_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/srv/Swarm_Add.srv" NAME_WE)
add_dependencies(easyfly_generate_messages_py _easyfly_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(easyfly_genpy)
add_dependencies(easyfly_genpy easyfly_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS easyfly_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easyfly)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easyfly
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(easyfly_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(easyfly_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easyfly)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easyfly
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(easyfly_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(easyfly_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easyfly)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easyfly\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easyfly
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(easyfly_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(easyfly_generate_messages_py geometry_msgs_generate_messages_py)
endif()
