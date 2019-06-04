from distutils.core import setup
from catkin_pkg.python_setup import generate_distutils_setup

# fetch values from package.xml
setup_args = generate_distutils_setup(
    packages=['yumi_moveit_demos'],
    package_dir={'': 'src'},
    requires=['rospy', 'tf', 'moveit_commander', 'moveit_msgs', 'geometry_msgs', 'std_msgs',
              'yumi_hw']
)

setup(**setup_args)