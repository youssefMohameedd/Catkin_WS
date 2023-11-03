#!/usr/bin/env python3


import rospy
from std_msgs.msg import String
from first.srv import Birthday
from first.msg import CakeAction, CakeGoal
import actionlib
import sys

Number_Of_Cakes = 3
Age = 30

class SubscriberClient:
    def _init_(self, age):
        self.age = age
        self.sub = rospy.Subscriber('month', String, self.callback)
        self.client = actionlib.SimpleActionClient('bake_cake', CakeAction)
        self.client.wait_for_server()

    def callback(self, data):
        rospy.loginfo("It is {}".format(data.data))
        if "12" in data.data:
            rospy.wait_for_service('birthday')
            try:
                birthday = rospy.ServiceProxy('birthday', Birthday)
                response = birthday(self.age)
                rospy.loginfo(response.message)
                goal = CakeGoal()
                goal.num_cakes = Number_Of_Cakes
                self.client.send_goal(goal, feedback_cb=self.feedback_callback)
                self.client.wait_for_result()
                result = self.client.get_result()
                rospy.loginfo(result.message)
            except rospy.ServiceException as e:
                print("Service call failed: %s"%e)

    def feedback_callback(self, feedback):
        rospy.loginfo("Cakes Baked cake_baked: {}".format(feedback.cake_baked))

if  __name__  ==  '__main__':
    rospy.init_node('subscriber_client_node')
    age = int(sys.argv[1]) if len(sys.argv) > 1 else 25
    sc = SubscriberClient()
    sc._init_(age)
    rospy.spin()