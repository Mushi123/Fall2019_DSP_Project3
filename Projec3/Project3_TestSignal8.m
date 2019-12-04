clear;
clc;
close all;

%%
%Test signal 8e3
if(1)
    clear;
    clc;
    close all;
    
    N = 8000*30;
    random_signal = rand(N,1);
    sound(random_signal,8000);
    audiowrite('OriginalTestSignal8.wav', random_signal,8e3);
    
    a = audiorecorder(8e3,16,1);
    recordblocking(a,30);
    b = getaudiodata(a);
    audiowrite('testSignal8.wav', b,8e3);
end

%%
%Music without 8e3
if(0)
    clear;
    clc;
    close all;
    
    [y, Fs] = audioread('music816.wav');
    sound(y,Fs);
    
    a = audiorecorder(8e3,16,1);
    recordblocking(a,30);
    b = getaudiodata(a);
    audiowrite('music816Without.wav', b,8e3);
end

%%
%Music with 8e3
if(0)
    clear;
    clc;
    close all;
    
    [y, Fs] = audioread('music816.wav');
    sound(y,Fs);
    
    a = audiorecorder(8e3,16,1);
    recordblocking(a,30);
    b = getaudiodata(a);
    audiowrite('music816With.wav', b,8e3);
end

%%
%Background without 8e3
if(0)
    clear;
    clc;
    close all;
    
    [y, Fs] = audioread('background816.wav');
    sound(y,Fs);
    
    a = audiorecorder(8e3,16,1);
    recordblocking(a,30);
    b = getaudiodata(a);
    audiowrite('background816Without.wav', b,8e3);
end

%%
%Background with 8e3
if(0)
    clear;
    clc;
    close all;
    
    [y, Fs] = audioread('background816.wav');
    sound(y,Fs);
    
    a = audiorecorder(8e3,16,1);
    recordblocking(a,30);
    b = getaudiodata(a);
    audiowrite('background816With.wav', b,8e3);
end

%%
%Human without 8e3
if(0)
    clear;
    clc;
    close all;
    
    [y, Fs] = audioread('human816.wav');
    sound(y,Fs);
    
    a = audiorecorder(8e3,16,1);
    recordblocking(a,30);
    b = getaudiodata(a);
    audiowrite('human816Without.wav', b,8e3);
end

%%
%Human with 8e3
if(0)
    clear;
    clc;
    close all;
    
    [y, Fs] = audioread('human816.wav');
    sound(y,Fs);
    
    a = audiorecorder(8e3,16,1);
    recordblocking(a,30);
    b = getaudiodata(a);
    audiowrite('human816With.wav', b,8e3);
end