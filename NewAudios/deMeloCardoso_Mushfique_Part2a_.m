clear;
clc;
close all;

[test_signalOriginal, FsO]=audioread('OriginalTestSignal.wav');
[test_signal, Fs]=audioread('TestSignal.wav');

if(1)

    for na=5:1:10
        
        %nb zeros, and exactly na poles.
        [b,a] = stmcb(test_signal,test_signalOriginal,0,na);
%         [d1,p1] = aryule(test_signal,65);
        figure;
        [H1,w1] = freqz(b,a);
        freqz(b,a);
         
        title("Frequency response STMCB method - denominator order = " + num2str(na));
           
    end
    
end

if(0)
    na = 7;
    [b,a] = stmcb(test_signal,x,0,na);
    figure;
    [H1,w1] = freqz(b,a);
    freqz(b,a);
         
    title("Frequency response STMCB method - denominator order = " + num2str(na));
    zplane(b,a);
    title("Z plane for na = 7");    
    
    
end


return;

test_signal=hidden_system(x)