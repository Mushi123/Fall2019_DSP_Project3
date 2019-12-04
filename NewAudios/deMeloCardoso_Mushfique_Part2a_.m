clear;
clc;
close all;

[test_signalOriginal, FsO]=audioread('OriginalTestSignal.wav');
[test_signal, Fs]=audioread('TestSignal.wav');
order = 80;


if(1)
    order = 80;
    [d1,p1] = aryule(test_signal,order);
    figure;
    freqz(sqrt(p1),d1);
    title("Frequency response aryule method - denominator order = " + num2str(order));
    figure;
    zplane(sqrt(p1),d1);
    title("Z plane for order = 80");    
    figure(); impz(sqrt(p1),d1);
    title("h(n) aryule method - denominator order = 80");

end


return;
