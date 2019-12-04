clear;
clc;
close all;

[test_signalOriginal, FsO]=audioread('OriginalTestSignal.wav');
[test_signal, Fs]=audioread('TestSignal.wav');
order = 80;

if(1)
    for order=50:5:120
        
        %nb zeros, and exactly na poles.
%         [b,a] = stmcb(test_signal,test_signalOriginal,0,order);
        [d1,p1] = aryule(test_signal,order);
        figure;
%         [H1,w1] = freqz(b,a);
%         freqz(b,a);
        freqz(sqrt(p1),d1);
         
        title("Frequency response aryule method - denominator order = " + num2str(order));
    end


end


return;

