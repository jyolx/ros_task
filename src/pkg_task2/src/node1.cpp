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
ros::Publisher node1_pub;
void Callback(const pkg_task2::temp1  &msg)
{
    
 cout<<msg.b.c_str();    
    
         
}
int main(int argc, char **argv)
{

 ros::init(argc, argv, "node1_sub");
 ros::NodeHandle n;

ros::Publisher node1_pub =
n.advertise<pkg_task2::temp1> ("topic1",1000);
ros::Rate loop_rate(10);
cout<<"Node has been initialised\n"; 

ros::Subscriber sub = n.subscribe("topic1", 50, Callback);

while(ros::ok() )
{
pkg_task2::temp1 msg;
string message;
getline(cin,message);
//cout<<message<<" \""<<" will be sent";
msg.a = message;
// msg.b="null";

node1_pub.publish(msg);
ros::spinOnce();
loop_rate.sleep();
}

 return 0;
}

