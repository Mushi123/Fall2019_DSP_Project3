clear;
clc;
close all;

[test_signalOriginal, FsO]=audioread('OriginalTestSignal.wav');
[test_signal, Fs]=audioread('TestSignal.wav');
if(1)
    
    lenFactor = 80;
    [d1,p1] = aryule(test_signal,lenFactor);
    figure;
    [H1,w1] = freqz(sqrt(p1),d1);
    freqz(sqrt(p1),d1);

end


return;

