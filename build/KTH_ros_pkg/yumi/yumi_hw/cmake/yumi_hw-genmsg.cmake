# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "yumi_hw: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(yumi_hw_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/casch/yumi_depends_ws/src/KTH_ros_pkg/yumi/yumi_hw/srv/YumiGrasp.srv" NAME_WE)
add_custom_target(_yumi_hw_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yumi_hw" "/home/casch/yumi_depends_ws/src/KTH_ros_pkg/yumi/yumi_hw/srv/YumiGrasp.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(yumi_hw
  "/home/casch/yumi_depends_ws/src/KTH_ros_pkg/yumi/yumi_hw/srv/YumiGrasp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yumi_hw
)

### Generating Module File
_generate_module_cpp(yumi_hw
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yumi_hw
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(yumi_hw_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(yumi_hw_generate_messages yumi_hw_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/casch/yumi_depends_ws/src/KTH_ros_pkg/yumi/yumi_hw/srv/YumiGrasp.srv" NAME_WE)
add_dependencies(yumi_hw_generate_messages_cpp _yumi_hw_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yumi_hw_gencpp)
add_dependencies(yumi_hw_gencpp yumi_hw_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yumi_hw_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(yumi_hw
  "/home/casch/yumi_depends_ws/src/KTH_ros_pkg/yumi/yumi_hw/srv/YumiGrasp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yumi_hw
)

### Generating Module File
_generate_module_eus(yumi_hw
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yumi_hw
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(yumi_hw_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(yumi_hw_generate_messages yumi_hw_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/casch/yumi_depends_ws/src/KTH_ros_pkg/yumi/yumi_hw/srv/YumiGrasp.srv" NAME_WE)
add_dependencies(yumi_hw_generate_messages_eus _yumi_hw_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yumi_hw_geneus)
add_dependencies(yumi_hw_geneus yumi_hw_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yumi_hw_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(yumi_hw
  "/home/casch/yumi_depends_ws/src/KTH_ros_pkg/yumi/yumi_hw/srv/YumiGrasp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yumi_hw
)

### Generating Module File
_generate_module_lisp(yumi_hw
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yumi_hw
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(yumi_hw_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(yumi_hw_generate_messages yumi_hw_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/casch/yumi_depends_ws/src/KTH_ros_pkg/yumi/yumi_hw/srv/YumiGrasp.srv" NAME_WE)
add_dependencies(yumi_hw_generate_messages_lisp _yumi_hw_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yumi_hw_genlisp)
add_dependencies(yumi_hw_genlisp yumi_hw_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yumi_hw_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(yumi_hw
  "/home/casch/yumi_depends_ws/src/KTH_ros_pkg/yumi/yumi_hw/srv/YumiGrasp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yumi_hw
)

### Generating Module File
_generate_module_nodejs(yumi_hw
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yumi_hw
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(yumi_hw_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(yumi_hw_generate_messages yumi_hw_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/casch/yumi_depends_ws/src/KTH_ros_pkg/yumi/yumi_hw/srv/YumiGrasp.srv" NAME_WE)
add_dependencies(yumi_hw_generate_messages_nodejs _yumi_hw_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yumi_hw_gennodejs)
add_dependencies(yumi_hw_gennodejs yumi_hw_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yumi_hw_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(yumi_hw
  "/home/casch/yumi_depends_ws/src/KTH_ros_pkg/yumi/yumi_hw/srv/YumiGrasp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yumi_hw
)

### Generating Module File
_generate_module_py(yumi_hw
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yumi_hw
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(yumi_hw_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(yumi_hw_generate_messages yumi_hw_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/casch/yumi_depends_ws/src/KTH_ros_pkg/yumi/yumi_hw/srv/YumiGrasp.srv" NAME_WE)
add_dependencies(yumi_hw_generate_messages_py _yumi_hw_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yumi_hw_genpy)
add_dependencies(yumi_hw_genpy yumi_hw_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yumi_hw_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yumi_hw)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yumi_hw
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(yumi_hw_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yumi_hw)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yumi_hw
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(yumi_hw_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yumi_hw)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yumi_hw
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(yumi_hw_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yumi_hw)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yumi_hw
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(yumi_hw_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yumi_hw)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yumi_hw\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yumi_hw
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(yumi_hw_generate_messages_py std_msgs_generate_messages_py)
endif()
