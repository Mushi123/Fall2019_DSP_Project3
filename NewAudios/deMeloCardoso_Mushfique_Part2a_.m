clear;
clc;
close all;

[test_signalOriginal, FsO]=audioread('OriginalTestSignal.wav');
[test_signal, Fs]=audioread('TestSignal.wav');
order = 80;
if(1)    
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
%% Cross correlation
[xc,lags] = xcorr(test_signal,test_signalOriginal);
[~,I] = max(abs(xc));
figure
stem(lags,xc,'filled')
legend(sprintf('Maximum at lag %d',lags(I)))
title('Sample Cross-Correlation Sequence')
% Max lag at 1323
%%
cancellation_system(sqrt(p1),d1,'BackgroundNoise.wav','BackgroundNoiseWith.wav')