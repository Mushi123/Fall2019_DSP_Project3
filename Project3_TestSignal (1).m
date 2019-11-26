clear;
clc;
close all;

[y, Fs] = audioread('BackgroundNoise.wav');
sound(y,Fs);

% N = 48000*30;
% random_signal = rand(N,1);
% sound(random_signal,48000);

a = audiorecorder(48e3,16,1);
recordblocking(a,30);
b = getaudiodata(a);
%sound(b)
audiowrite('BackgroundNoiseTeste1.wav', b,48e3);

clear sound;