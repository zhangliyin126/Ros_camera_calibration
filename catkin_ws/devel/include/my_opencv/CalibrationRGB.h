// Generated by gencpp from file my_opencv/CalibrationRGB.msg
// DO NOT EDIT!


#ifndef MY_OPENCV_MESSAGE_CALIBRATIONRGB_H
#define MY_OPENCV_MESSAGE_CALIBRATIONRGB_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace my_opencv
{
template <class ContainerAllocator>
struct CalibrationRGB_
{
  typedef CalibrationRGB_<ContainerAllocator> Type;

  CalibrationRGB_()
    : R()
    , G()
    , B()  {
    }
  CalibrationRGB_(const ContainerAllocator& _alloc)
    : R(_alloc)
    , G(_alloc)
    , B(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<uint32_t, typename ContainerAllocator::template rebind<uint32_t>::other >  _R_type;
  _R_type R;

   typedef std::vector<uint32_t, typename ContainerAllocator::template rebind<uint32_t>::other >  _G_type;
  _G_type G;

   typedef std::vector<uint32_t, typename ContainerAllocator::template rebind<uint32_t>::other >  _B_type;
  _B_type B;





  typedef boost::shared_ptr< ::my_opencv::CalibrationRGB_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_opencv::CalibrationRGB_<ContainerAllocator> const> ConstPtr;

}; // struct CalibrationRGB_

typedef ::my_opencv::CalibrationRGB_<std::allocator<void> > CalibrationRGB;

typedef boost::shared_ptr< ::my_opencv::CalibrationRGB > CalibrationRGBPtr;
typedef boost::shared_ptr< ::my_opencv::CalibrationRGB const> CalibrationRGBConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_opencv::CalibrationRGB_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_opencv::CalibrationRGB_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace my_opencv

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'my_opencv': ['/home/robot4/catkin_ws/src/my_opencv/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::my_opencv::CalibrationRGB_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_opencv::CalibrationRGB_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_opencv::CalibrationRGB_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_opencv::CalibrationRGB_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_opencv::CalibrationRGB_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_opencv::CalibrationRGB_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_opencv::CalibrationRGB_<ContainerAllocator> >
{
  static const char* value()
  {
    return "69843753f2755d668ff7558392825518";
  }

  static const char* value(const ::my_opencv::CalibrationRGB_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x69843753f2755d66ULL;
  static const uint64_t static_value2 = 0x8ff7558392825518ULL;
};

template<class ContainerAllocator>
struct DataType< ::my_opencv::CalibrationRGB_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_opencv/CalibrationRGB";
  }

  static const char* value(const ::my_opencv::CalibrationRGB_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_opencv::CalibrationRGB_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32[] R\n\
uint32[] G\n\
uint32[] B\n\
";
  }

  static const char* value(const ::my_opencv::CalibrationRGB_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_opencv::CalibrationRGB_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.R);
      stream.next(m.G);
      stream.next(m.B);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CalibrationRGB_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_opencv::CalibrationRGB_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_opencv::CalibrationRGB_<ContainerAllocator>& v)
  {
    s << indent << "R[]" << std::endl;
    for (size_t i = 0; i < v.R.size(); ++i)
    {
      s << indent << "  R[" << i << "]: ";
      Printer<uint32_t>::stream(s, indent + "  ", v.R[i]);
    }
    s << indent << "G[]" << std::endl;
    for (size_t i = 0; i < v.G.size(); ++i)
    {
      s << indent << "  G[" << i << "]: ";
      Printer<uint32_t>::stream(s, indent + "  ", v.G[i]);
    }
    s << indent << "B[]" << std::endl;
    for (size_t i = 0; i < v.B.size(); ++i)
    {
      s << indent << "  B[" << i << "]: ";
      Printer<uint32_t>::stream(s, indent + "  ", v.B[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_OPENCV_MESSAGE_CALIBRATIONRGB_H