# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "yumipy: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(yumipy_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/casch/yumi_depends_ws/src/yumipy/srv/ROSYumiArm.srv" NAME_WE)
add_custom_target(_yumipy_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yumipy" "/home/casch/yumi_depends_ws/src/yumipy/srv/ROSYumiArm.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(yumipy
  "/home/casch/yumi_depends_ws/src/yumipy/srv/ROSYumiArm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yumipy
)

### Generating Module File
_generate_module_cpp(yumipy
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yumipy
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(yumipy_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(yumipy_generate_messages yumipy_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/casch/yumi_depends_ws/src/yumipy/srv/ROSYumiArm.srv" NAME_WE)
add_dependencies(yumipy_generate_messages_cpp _yumipy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yumipy_gencpp)
add_dependencies(yumipy_gencpp yumipy_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yumipy_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(yumipy
  "/home/casch/yumi_depends_ws/src/yumipy/srv/ROSYumiArm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yumipy
)

### Generating Module File
_generate_module_eus(yumipy
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yumipy
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(yumipy_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(yumipy_generate_messages yumipy_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/casch/yumi_depends_ws/src/yumipy/srv/ROSYumiArm.srv" NAME_WE)
add_dependencies(yumipy_generate_messages_eus _yumipy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yumipy_geneus)
add_dependencies(yumipy_geneus yumipy_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yumipy_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(yumipy
  "/home/casch/yumi_depends_ws/src/yumipy/srv/ROSYumiArm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yumipy
)

### Generating Module File
_generate_module_lisp(yumipy
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yumipy
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(yumipy_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(yumipy_generate_messages yumipy_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/casch/yumi_depends_ws/src/yumipy/srv/ROSYumiArm.srv" NAME_WE)
add_dependencies(yumipy_generate_messages_lisp _yumipy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yumipy_genlisp)
add_dependencies(yumipy_genlisp yumipy_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yumipy_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(yumipy
  "/home/casch/yumi_depends_ws/src/yumipy/srv/ROSYumiArm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yumipy
)

### Generating Module File
_generate_module_nodejs(yumipy
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yumipy
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(yumipy_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(yumipy_generate_messages yumipy_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/casch/yumi_depends_ws/src/yumipy/srv/ROSYumiArm.srv" NAME_WE)
add_dependencies(yumipy_generate_messages_nodejs _yumipy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yumipy_gennodejs)
add_dependencies(yumipy_gennodejs yumipy_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yumipy_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(yumipy
  "/home/casch/yumi_depends_ws/src/yumipy/srv/ROSYumiArm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yumipy
)

### Generating Module File
_generate_module_py(yumipy
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yumipy
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(yumipy_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(yumipy_generate_messages yumipy_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/casch/yumi_depends_ws/src/yumipy/srv/ROSYumiArm.srv" NAME_WE)
add_dependencies(yumipy_generate_messages_py _yumipy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yumipy_genpy)
add_dependencies(yumipy_genpy yumipy_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yumipy_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yumipy)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yumipy
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(yumipy_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yumipy)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yumipy
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(yumipy_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yumipy)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yumipy
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(yumipy_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yumipy)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yumipy
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(yumipy_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yumipy)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yumipy\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yumipy
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yumipy
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yumipy/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(yumipy_generate_messages_py std_msgs_generate_messages_py)
endif()
