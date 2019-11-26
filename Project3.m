clear;
clc;
close all;

% [y, Fs] = audioread('Project2.mp3');
% sound(y,Fs);

a = audiorecorder(48e3,16,1);
recordblocking(a,30);
b = getaudiodata(a);
%sound(b)
audiowrite('audio2.wav', b,48e3);

clear sound;