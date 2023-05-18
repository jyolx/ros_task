#include<ros/ros.h>
#include<std_msgs/String.h>
#include<sstream>
#include<iostream>
#include<cstdio>
#include<bits/stdc++.h>
#include<string>
using namespace std;

void cb(const std_msgs::String::ConstPtr& ptr){

cout<<(ptr->data.c_str())<<endl;
}

int main(int argc,char **argv){
ros::init(argc,argv,"node1");

ros:: NodeHandle nodeh;
ros::Subscriber node1_sub = nodeh.subscribe("topic",100,cb);
ros::spin();
ros::Publisher node1_pub =
nodeh.advertise<std_msgs::String> ("topic",1000);
ros::Rate loop_rate(10);
cout<<"Node has been initialised\n";


while(ros::ok() )
{
std_msgs::String msg;
string message;
getline(cin,message);
cout<<"\" "<<message<<" \""<<" will be sent\n";
msg.data = message;

node1_pub.publish(msg);
ros::spinOnce();
loop_rate.sleep();
}

return 0;
}

