#!/usr/bin/env python3

import rospy
from std_msgs.msg import String
from first.srv import Birthday, BirthdayResponse
from first.msg import CakeAction, CakeFeedback, CakeResult
import actionlib

class PublisherServer:
    def _init_(self):
        self.pub = rospy.Publisher('month', String, queue_size=10)
        self.srv = rospy.Service('birthday', Birthday, self.handle_birthday)
        self.aserver = actionlib.SimpleActionServer('bake_cake', CakeAction, execute_cb=self.handle_bake, auto_start=False)
        self.aserver.start()
        self.rate = rospy.Rate(1) # 1hz
        self.month_num = 1

    def handle_birthday(self, req):
        return BirthdayResponse("Happy {}th Birthday!!".format(req.age))

    def handle_bake(self, goal):
        feedback = CakeFeedback()
        result = CakeResult()
        for i in range(1, goal.num_cakes + 1):
            feedback.cake_baked = i
            self.aserver.publish_feedback(feedback)
            self.rate.sleep()
        result.message = "Cakes Baked Enjoy!!"
        self.aserver.set_succeeded(result)

    def start(self):
        while not rospy.is_shutdown() and self.month_num <= 12:
            self.pub.publish("Month {}".format(self.month_num))
            self.month_num += 1
            self.rate.sleep()

if  __name__ == '__main__':
    rospy.init_node('publisher_server_node')
    ps = PublisherServer()
    ps._init_()
    ps.start()