#!/usr/bin/env python3
import sys
import rospy 

from std_msgs.msg import *
from first.msg import Months
from first.srv import *



##def send_age(my_age):
##rospy.init_node('Month_Client', anonymous=True)
 ## rospy.wait_for_service('Month')
 ## Month = rospy.ServiceProxy('Month', Month) # I cannot understand this line
  ##my_response = Month(my_age)
 ## print("Requesting %s"%(my_age))  ##comment when it works
  

 ## return my_response.Message 
#



class Listener:
    def __init__(self):
        self.counter = 0
        rospy.init_node('listener', anonymous=True)
        rospy.Subscriber("chatter", Months, self.callback)

    def callback(self, Resala):
        print("It is " , Resala.name , Resala.number) 
        terminator = Resala.number
        self.counter += 1
        
        if self.counter >= 10:
            rospy.signal_shutdown('Executed callback 10 times')

    def listen(self):
        try:
            rospy.spin()
        except rospy.ROSInterruptException:
            pass


    
if __name__ == '__main__': 
   

    age = 25
    listener = Listener()
    listener.listen()
    #send_age(age)
    
    rospy.wait_for_service('Month')
    Month = rospy.ServiceProxy('Month', Month) # I cannot understand this line
    my_response = Month(age)
    print("Requesting %s"%(age))  ##comment when it works
##    print("%s"%(send_age(age)))