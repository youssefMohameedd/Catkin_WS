// Generated by gencpp from file first/MonthResponse.msg
// DO NOT EDIT!


#ifndef FIRST_MESSAGE_MONTHRESPONSE_H
#define FIRST_MESSAGE_MONTHRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace first
{
template <class ContainerAllocator>
struct MonthResponse_
{
  typedef MonthResponse_<ContainerAllocator> Type;

  MonthResponse_()
    : Message()  {
    }
  MonthResponse_(const ContainerAllocator& _alloc)
    : Message(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _Message_type;
  _Message_type Message;





  typedef boost::shared_ptr< ::first::MonthResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::first::MonthResponse_<ContainerAllocator> const> ConstPtr;

}; // struct MonthResponse_

typedef ::first::MonthResponse_<std::allocator<void> > MonthResponse;

typedef boost::shared_ptr< ::first::MonthResponse > MonthResponsePtr;
typedef boost::shared_ptr< ::first::MonthResponse const> MonthResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::first::MonthResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::first::MonthResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::first::MonthResponse_<ContainerAllocator1> & lhs, const ::first::MonthResponse_<ContainerAllocator2> & rhs)
{
  return lhs.Message == rhs.Message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::first::MonthResponse_<ContainerAllocator1> & lhs, const ::first::MonthResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace first

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::first::MonthResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::first::MonthResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::first::MonthResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::first::MonthResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::first::MonthResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::first::MonthResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::first::MonthResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ce8c0532094f50bab075d6707a3fc45b";
  }

  static const char* value(const ::first::MonthResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xce8c0532094f50baULL;
  static const uint64_t static_value2 = 0xb075d6707a3fc45bULL;
};

template<class ContainerAllocator>
struct DataType< ::first::MonthResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "first/MonthResponse";
  }

  static const char* value(const ::first::MonthResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::first::MonthResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string Message\n"
;
  }

  static const char* value(const ::first::MonthResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::first::MonthResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MonthResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::first::MonthResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::first::MonthResponse_<ContainerAllocator>& v)
  {
    s << indent << "Message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.Message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FIRST_MESSAGE_MONTHRESPONSE_H
