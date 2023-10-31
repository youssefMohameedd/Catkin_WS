#!/usr/bin/env python3

import rospy
from std_msgs.msg import *
from first.msg import Months

import actionlib
from first.srv import Month , MonthResponse




def handle_Age(req):

  print("hi")


def add_two_ints_server():
  rospy.init_node('Lab_server')
  s = rospy.Service('Month', Month, handle_Age)
  ##print("Ready to add two ints.")
  rospy.spin()





def talker():
  
  
 pub = rospy.Publisher('chatter', Months, queue_size=10)
 rospy.init_node('talker', anonymous=True)
 rate = rospy.Rate(1) # 1Hz

 Resala = Months()  # initializes instance of class Months
 Resala.name = "Month"
 Resala.number = 0
 
 for i  in range(12):
      
      Resala.number +=1
      rospy.loginfo(Resala)  # print on VScode terminal
      pub.publish(Resala)  # publish the custom message 
      rate.sleep()   # delay for the next loop with the specified frequncy



if __name__ ==  '__main__':    
    

    try:
          talker()
    except rospy.ROSInterruptException:
           pass
