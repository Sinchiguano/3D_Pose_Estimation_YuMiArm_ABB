# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# pack a list of libraries with optional build configuration keywords
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_pack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  set(_argn ${ARGN})
  list(LENGTH _argn _count)
  set(_index 0)
  while(${_index} LESS ${_count})
    list(GET _argn ${_index} lib)
    if("${lib}" MATCHES "^(debug|optimized|general)$")
      math(EXPR _index "${_index} + 1")
      if(${_index} EQUAL ${_count})
        message(FATAL_ERROR "_pack_libraries_with_build_configuration() the list of libraries '${ARGN}' ends with '${lib}' which is a build configuration keyword and must be followed by a library")
      endif()
      list(GET _argn ${_index} library)
      list(APPEND ${VAR} "${lib}${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}${library}")
    else()
      list(APPEND ${VAR} "${lib}")
    endif()
    math(EXPR _index "${_index} + 1")
  endwhile()
endmacro()

# unpack a list of libraries with optional build configuration keyword prefixes
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_unpack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  foreach(lib ${ARGN})
    string(REGEX REPLACE "^(debug|optimized|general)${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}(.+)$" "\\1;\\2" lib "${lib}")
    list(APPEND ${VAR} "${lib}")
  endforeach()
endmacro()


if(simple_message_CONFIG_INCLUDED)
  return()
endif()
set(simple_message_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("TRUE" STREQUAL "TRUE")
  set(simple_message_SOURCE_PREFIX /home/casch/yumi_depends_ws/src/KTH_ros_pkg/industrial_core/simple_message)
  set(simple_message_DEVEL_PREFIX /home/casch/yumi_depends_ws/devel)
  set(simple_message_INSTALL_PREFIX "")
  set(simple_message_PREFIX ${simple_message_DEVEL_PREFIX})
else()
  set(simple_message_SOURCE_PREFIX "")
  set(simple_message_DEVEL_PREFIX "")
  set(simple_message_INSTALL_PREFIX /home/casch/yumi_depends_ws/install)
  set(simple_message_PREFIX ${simple_message_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'simple_message' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(simple_message_FOUND_CATKIN_PROJECT TRUE)

if(NOT "/home/casch/yumi_depends_ws/src/KTH_ros_pkg/industrial_core/simple_message/include " STREQUAL " ")
  set(simple_message_INCLUDE_DIRS "")
  set(_include_dirs "/home/casch/yumi_depends_ws/src/KTH_ros_pkg/industrial_core/simple_message/include")
  if(NOT " " STREQUAL " ")
    set(_report "Check the issue tracker '' and consider creating a ticket if the problem has not been reported yet.")
  elseif(NOT "http://ros.org/wiki/simple_message " STREQUAL " ")
    set(_report "Check the website 'http://ros.org/wiki/simple_message' for information and consider reporting the problem.")
  else()
    set(_report "Report the problem to the maintainer 'Shaun Edwards <sedwards@swri.org>' and request to fix the problem.")
  endif()
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${simple_message_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'simple_message' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  ${_report}")
      endif()
    else()
      message(FATAL_ERROR "Project 'simple_message' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '/home/casch/yumi_depends_ws/src/KTH_ros_pkg/industrial_core/simple_message/${idir}'.  ${_report}")
    endif()
    _list_append_unique(simple_message_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "simple_message_dummy")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND simple_message_LIBRARIES ${library})
  elseif(TARGET ${library})
    list(APPEND simple_message_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND simple_message_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/casch/yumi_depends_ws/devel/lib;/home/casch/yumi_depends_ws/devel/lib;/opt/ros/kinetic/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(simple_message_LIBRARY_DIRS ${lib_path})
      list(APPEND simple_message_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'simple_message'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND simple_message_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(simple_message_EXPORTED_TARGETS "")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${simple_message_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "roscpp;industrial_msgs")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 simple_message_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${simple_message_dep}_FOUND)
      find_package(${simple_message_dep} REQUIRED NO_MODULE)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${simple_message_dep} REQUIRED NO_MODULE ${depend_list})
  endif()
  _list_append_unique(simple_message_INCLUDE_DIRS ${${simple_message_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(simple_message_LIBRARIES ${simple_message_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${simple_message_dep}_LIBRARIES})
  _list_append_deduplicate(simple_message_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(simple_message_LIBRARIES ${simple_message_LIBRARIES})

  _list_append_unique(simple_message_LIBRARY_DIRS ${${simple_message_dep}_LIBRARY_DIRS})
  list(APPEND simple_message_EXPORTED_TARGETS ${${simple_message_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "/home/casch/yumi_depends_ws/src/KTH_ros_pkg/industrial_core/simple_message/cmake/issue46_workaround.cmake")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${simple_message_DIR}/${extra})
  endif()
  include(${extra})
endforeach()
