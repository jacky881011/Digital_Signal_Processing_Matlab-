%% Record and play back 5 seconds of 16 bit audio sampled at 16000kHz
clear;

recObj = audiorecorder(16000, 16, 1);
disp('Start speaking!')

recordblocking(recObj,  5);
disp('End of recording...');


%% Play back the recording 
play(recObj);


%% Store data in double-precision array
x = getaudiodata(recObj, 'int16');

%% plot the waveform

plot(x);

%% save the sound in a raw pcm file
fp = fopen('16kHz.pcm', 'wb');
fwrite(fp, x, 'short');
fclose(fp);




