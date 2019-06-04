// Generated by gencpp from file yumi_hw/YumiGraspRequest.msg
// DO NOT EDIT!


#ifndef YUMI_HW_MESSAGE_YUMIGRASPREQUEST_H
#define YUMI_HW_MESSAGE_YUMIGRASPREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace yumi_hw
{
template <class ContainerAllocator>
struct YumiGraspRequest_
{
  typedef YumiGraspRequest_<ContainerAllocator> Type;

  YumiGraspRequest_()
    : gripper_id(0)  {
    }
  YumiGraspRequest_(const ContainerAllocator& _alloc)
    : gripper_id(0)  {
  (void)_alloc;
    }



   typedef uint16_t _gripper_id_type;
  _gripper_id_type gripper_id;



  enum {
    LEFT_GRIPPER = 1u,
    RIGHT_GRIPPER = 2u,
  };


  typedef boost::shared_ptr< ::yumi_hw::YumiGraspRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::yumi_hw::YumiGraspRequest_<ContainerAllocator> const> ConstPtr;

}; // struct YumiGraspRequest_

typedef ::yumi_hw::YumiGraspRequest_<std::allocator<void> > YumiGraspRequest;

typedef boost::shared_ptr< ::yumi_hw::YumiGraspRequest > YumiGraspRequestPtr;
typedef boost::shared_ptr< ::yumi_hw::YumiGraspRequest const> YumiGraspRequestConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::yumi_hw::YumiGraspRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::yumi_hw::YumiGraspRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace yumi_hw

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::yumi_hw::YumiGraspRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yumi_hw::YumiGraspRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::yumi_hw::YumiGraspRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::yumi_hw::YumiGraspRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yumi_hw::YumiGraspRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yumi_hw::YumiGraspRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::yumi_hw::YumiGraspRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "26ac3d04102c2e5c0d5e4e1367d0349b";
  }

  static const char* value(const ::yumi_hw::YumiGraspRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x26ac3d04102c2e5cULL;
  static const uint64_t static_value2 = 0x0d5e4e1367d0349bULL;
};

template<class ContainerAllocator>
struct DataType< ::yumi_hw::YumiGraspRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "yumi_hw/YumiGraspRequest";
  }

  static const char* value(const ::yumi_hw::YumiGraspRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::yumi_hw::YumiGraspRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint16 LEFT_GRIPPER=1\n\
uint16 RIGHT_GRIPPER=2\n\
\n\
uint16 gripper_id\n\
";
  }

  static const char* value(const ::yumi_hw::YumiGraspRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::yumi_hw::YumiGraspRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.gripper_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct YumiGraspRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::yumi_hw::YumiGraspRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::yumi_hw::YumiGraspRequest_<ContainerAllocator>& v)
  {
    s << indent << "gripper_id: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.gripper_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // YUMI_HW_MESSAGE_YUMIGRASPREQUEST_H
