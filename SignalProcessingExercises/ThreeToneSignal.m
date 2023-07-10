%% 3 tone signal
close all
wt = @(f,t) 2.*pi.*f.*t ;

time = linspace(eps,0.05,301) ;

sig = 10.*cos(wt(100,time)) + 1.*cos(wt(200,time)) + 4.*cos(wt(300,time)) ;

fftsig = abs(fft(sig));

figure
subplot(3,1,1)
plot(time,sig);

subplot(3,1,2)
plot(fftsig(round( length(fftsig)/2):end ) )

subplot(3,1,3)
plot(1./time,fftsig)