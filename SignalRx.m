%% RTL-SDR Signal Reception
fc = 90.6e6 ;
address = sdrinfo ;
rx = comm.SDRRTLReceiver("RadioAddress",address.RadioAddress,"CenterFrequency", ...
    fc,"EnableTunerAGC",true,"OutputDataType","double","SampleRate",250e3,"SamplesPerFrame",1024) ;
[output,len,lost] = rx() ;
Real_rx = real(output) ;
Imag_rx = imag(output) ;

figure
scatter(Real_rx,Imag_rx)


% More Frames

for p=1:1000
    rxdata = rx();
end
release(rx)
