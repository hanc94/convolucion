clc;
clear all;
close all;

b=[1];
a=[ 1 -1.78];

h=[1,-0.95];
x=[0.75,-1.67,0.23,2.79];

y1=conv(x,h)'
y2=filter(h,1,x)'

N=100;
n=0:(N-1);
delta_n=(n==0);

h_0=filter(b,a,delta_n);
 stem(h_0);
 
y3=filter(b,a,x)'
y4=conv(h_0,x)';
y4(1:4)

% sum(abs(h_0));