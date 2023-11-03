#!/usr/bin/env python3

import rospy
from std_msgs.msg import *
from first.msg import Months


from first.srv import Month , MonthResponse
import actionlib





def handle_Age(My_Data):

  return MonthResponse("Happy ", My_Data.Age , "th Birthday!!")



def Month_server():

  print("Server is working hard")
  s = rospy.Service('Month', Month, handle_Age)
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
          Month_server()
    except rospy.ROSInterruptException:
           pass
