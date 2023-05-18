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
ros::init(argc,argv,"P1");
ros::NodeHandle nh1;
ros::Publisher channel1_pub =
nh1.advertise<std_msgs::String> ("channel1",1000);
ros::Rate loop_rate(10);
cout<<"Node has been initialised\n";

while(ros::ok() )
{
std_msgs::String msg;
string message;
getline(cin,message);
cout<<"\" "<<message<<" \""<<" will be sent\n";
msg.data = message;

channel1_pub.publish(msg);
ros::spinOnce();
loop_rate.sleep();
}
return 0;
}