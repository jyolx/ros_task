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
ros::init(argc,argv,"S1");

ros:: NodeHandle nr;

ros::Subscriber channel1_sub = nr.subscribe("channel1",100,cb);

ros::spin();

return 0;
}
