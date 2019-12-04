clear;
clc;
close all;

[y, Fs] = audioread('BackgroundNoise.wav');
sound(y,Fs);

% N = 48000*30;
% random_signal = rand(N,1);
% sound(random_signal,48000);
% audiowrite('OriginalMusic.wav', y,48e3);

a = audiorecorder(48e3,16,1);
recordblocking(a,30);
b = getaudiodata(a);
%sound(b)
audiowrite('BackgroundNoiseWith.wav', b,48e3);

clear sound;