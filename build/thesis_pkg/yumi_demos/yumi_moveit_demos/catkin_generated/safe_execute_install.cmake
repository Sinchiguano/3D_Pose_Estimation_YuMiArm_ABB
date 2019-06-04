execute_process(COMMAND "/home/casch/yumi_depends_ws/build/thesis_pkg/yumi_demos/yumi_moveit_demos/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/casch/yumi_depends_ws/build/thesis_pkg/yumi_demos/yumi_moveit_demos/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
