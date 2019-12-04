clear;
clc;
close all;

%%
%Test signal 48e3
if(1)
    clear;
    clc;
    close all;
    
    N = 48000*30;
    random_signal = rand(N,1);
    sound(random_signal,48000);
    audiowrite('OriginalTestSignal48.wav', random_signal,48e3);
    
    a = audiorecorder(48e3,16,1);
    recordblocking(a,30);
    b = getaudiodata(a);
    audiowrite('testSignal48.wav', b,48e3);
end

%%
%Music without 48e3
if(1)
    clear;
    clc;
    close all;
    
    [y, Fs] = audioread('music4816.wav');
    sound(y,Fs);
    
    a = audiorecorder(48e3,16,1);
    recordblocking(a,30);
    b = getaudiodata(a);
    audiowrite('music4816Without.wav', b,48e3);
end

%%
%Music with 48e3
if(1)
    clear;
    clc;
    close all;
    
    [y, Fs] = audioread('music4816.wav');
    sound(y,Fs);
    
    a = audiorecorder(48e3,16,1);
    recordblocking(a,30);
    b = getaudiodata(a);
    audiowrite('music4816With.wav', b,48e3);
end

%%
%Background without 48e3
if(1)
    clear;
    clc;
    close all;
    
    [y, Fs] = audioread('background4816.wav');
    sound(y,Fs);
    
    a = audiorecorder(48e3,16,1);
    recordblocking(a,30);
    b = getaudiodata(a);
    audiowrite('background4816Without.wav', b,48e3);
end

%%
%Background with 48e3
if(1)
    clear;
    clc;
    close all;
    
    [y, Fs] = audioread('background4816.wav');
    sound(y,Fs);
    
    a = audiorecorder(48e3,16,1);
    recordblocking(a,30);
    b = getaudiodata(a);
    audiowrite('background4816With.wav', b,48e3);
end

%%
%Human without 48e3
if(1)
    clear;
    clc;
    close all;
    
    [y, Fs] = audioread('human4816.wav');
    sound(y,Fs);
    
    a = audiorecorder(48e3,16,1);
    recordblocking(a,30);
    b = getaudiodata(a);
    audiowrite('human4816Without.wav', b,48e3);
end

%%
%Human with 48e3
if(1)
    clear;
    clc;
    close all;
    
    [y, Fs] = audioread('human4816.wav');
    sound(y,Fs);
    
    a = audiorecorder(48e3,16,1);
    recordblocking(a,30);
    b = getaudiodata(a);
    audiowrite('human4816With.wav', b,48e3);
end