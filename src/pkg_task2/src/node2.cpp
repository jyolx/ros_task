#include<ros/ros.h>
#include<std_msgs/String.h>
#include"pkg_task2/temp1.h"
#include"pkg_task2/temp2.h"
#include<sstream>
#include<iostream>
#include<cstdio>
#include<bits/stdc++.h>
#include<string>
using namespace std;
 ros::Publisher node2_pub;
void Callback(const pkg_task2::temp1  &msg)
{
         
cout<<msg.a.c_str();
      
         
}
int main(int argc, char **argv)
{

 ros::init(argc, argv, "node2_sub");
 ros::NodeHandle m;
 
ros::Publisher node2_pub =
m.advertise<pkg_task2::temp1> ("topic1",1000);
ros::Rate loop_rate(10);
cout<<"Node has been initialised\n";

ros::Subscriber sub = m.subscribe("topic1", 50, Callback);
 
 while(ros::ok() )
{
pkg_task2::temp1 msg;
string message;
getline(cin,message);
//cout<<message<<" \""<<" will be sent";
msg.b = message;
// msg.a="null";
node2_pub.publish(msg);
ros::spinOnce();
loop_rate.sleep();
}
 
 return 0;
}