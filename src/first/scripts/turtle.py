#!/usr/bin/env python3

import rospy
import sys
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose
from first.srv import *
from first.srv import AddTwoInts,AddTwoIntsResponse

def pose_callback(poses): 
     print(poses.x, poses.y,poses.theta)


def handle_add_two_ints(req):
  return AddTwoIntsResponse(req.a + req.b)

pub = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
s = rospy.Service('add_two_ints', AddTwoInts,handle_add_two_ints)
rospy.Subscriber("/turtle1/pose", Pose, pose_callback) 
rospy.init_node('My_turtle', anonymous=True)
rate = rospy.Rate(10)




def turtle(): 
  vel = Twist()
  
  while not rospy.is_shutdown():
      vel.linear.x = 0.2
      vel.linear.y = 0
      vel.linear.z = 0
      vel.angular.x = 0
      vel.angular.y = 0
      vel.angular.z = 0.1
      rospy.loginfo(vel)
      pub.publish(vel)
      rate.sleep()
     

if __name__ == '__main__':
  try:
     turtle()
  except rospy.ROSInterruptException:
       pass

