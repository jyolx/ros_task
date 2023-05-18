#include<ros/ros.h>
#include<std_msgs/String.h>
#include<sstream>
#include<iostream>
#include<cstdio>
#include<bits/stdc++.h>
#include<string>
using namespace std;

int main(int argc, char **argv)
{
ros::init(argc,argv,"P2");
ros::NodeHandle nh2;
ros::Publisher channel2_pub =
nh2.advertise<std_msgs::String> ("channel2",1000);
ros::Rate loop_rate(10);
cout<<"Node has been initialised\n";

while(ros::ok() )
{
std_msgs::String msg;
string message;
getline(cin,message);
cout<<"\" "<<message<<" \""<<" will be sent\n";
msg.data = message;

channel2_pub.publish(msg);
ros::spinOnce();
loop_rate.sleep();
}
return 0;
}