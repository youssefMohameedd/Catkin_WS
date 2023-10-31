#!/usr/bin/env python3
import rospy 
from std_msgs.msg import *
from first.msg import Months



def callback(Resala): 
    
  
    print("It is " , Resala.name , Resala.number) 
      
 
  
def listener():
    
    rospy.init_node('listener', anonymous=True) 
    rospy.Subscriber("chatter", Months, callback) 
    rospy.spin() 
  
if __name__ == '__main__': 
   
   listener()