clear;
clc;
close all;

[test_signalOriginal, FsO]=audioread('OriginalTestSignal8.wav');
[test_signal, Fs]=audioread('testSignal8.wav');

%% Cross correlation
[xc,lags] = xcorr(test_signal,test_signalOriginal);
[~,I] = max(abs(xc));
figure
stem(lags,xc,'filled')
legend(sprintf('Maximum at lag %d',lags(I)))
title('Sample Cross-Correlation Sequence');

test_signal = delayseq(test_signal,383);


%% Cross correlation
[xc,lags] = xcorr(test_signal,test_signalOriginal);
[~,I] = max(abs(xc));
figure
stem(lags,xc,'filled')
legend(sprintf('Maximum at lag %d',lags(I)))
title('Sample Cross-Correlation Sequence');

if(0)
    for order=10:10:100
        [d1,p1] = aryule(test_signal,order);
        figure;
        freqz(sqrt(p1),d1);
        title("Frequency response aryule method - denominator order = " + num2str(order));
%         figure;
%         zplane(sqrt(p1),d1);
%         title("Z plane for order = 80");    
%         figure(); impz(sqrt(p1),d1);
%         title("h(n) aryule method - denominator order = 80");
    end
end

clear lags;
clear xc;
clear I;
clear Fs;
clear FsO;

if(1)
    
%     for na=5:1:10
        %nb zeros, and exactly na poles.
        [b,a] = stmcb(test_signal,test_signalOriginal,0,2);
        figure;
        [H1,w1] = freqz(b,a);
        freqz(b,a);
        title("Frequency response STMCB method - denominator order = " + num2str(na));
%     end

end

return;

if(1)
    order = 200;
    [d1,p1] = aryule(shifted_test_signal,order);
    figure;
    freqz(sqrt(p1),d1);
    title("Frequency response aryule method - denominator order = " + num2str(order));
%     figure;
%     zplane(sqrt(p1),d1);
%     title("Z plane for order = 50");    
%     figure(); impz(sqrt(p1),d1);
%     title("h(n) aryule method - denominator order = 50");

end

[originalMusic, FsOriginalMusic]=audioread('human4816.wav');

filteredOriginalMusic = filter(sqrt(p1),d1,originalMusic);

% sound(filteredOriginalMusic,FsOriginalMusic);
% audiowrite('filteredOriginalMusic48.wav', filteredOriginalMusic,48e3);

[MusicWith, FsMusicWith]=audioread('human4816Without.wav');

%% Cross correlation
[xc,lags] = xcorr(MusicWith,originalMusic);
[~,I] = max(abs(xc));
figure
stem(lags,xc,'filled')
legend(sprintf('Maximum at lag %d',lags(I)))
title('Sample Cross-Correlation Sequence');

%%
shifted_data = delayseq(originalMusic,1430);

%% Cross correlation
[xc,lags] = xcorr(MusicWith,shifted_data);
[~,I] = max(abs(xc));
figure
stem(lags,xc,'filled')
legend(sprintf('Maximum at lag %d',lags(I)))
title('Sample Cross-Correlation Sequence');

%%
fftSignal = fft(originalMusic,48e3);
fftSignal = fftshift(fftSignal);
figure;
plot(abs(fftSignal));
title('Original Signal spectrum');
ylabel('Amplitude');

fftSignal = fft(MusicWith,48e3);
fftSignal = fftshift(fftSignal);
figure;
plot(abs(fftSignal));
title('Recorded Signal spectrum');
ylabel('Amplitude');

fftSignal = fft(filteredOriginalMusic,48e3);
fftSignal = fftshift(fftSignal);
figure;
plot(abs(fftSignal));
title('Filtered Signal spectrum');
ylabel('Amplitude');

outputNoiseCancel = MusicWith-filteredOriginalMusic;

fftSignal = fft(outputNoiseCancel,48e3);
fftSignal = fftshift(fftSignal);
figure;
plot(abs(fftSignal));
title('Output Signal spectrum');
ylabel('Amplitude');

sound(outputNoiseCancel,48e3);

return;

clear sound;

