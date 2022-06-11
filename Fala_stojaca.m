%% Fala stojąca
%JN 26.04.2022 Kraków
clear vars
close all
clc
%% Zmienne
t=0:0.01:10; %Wektor czasu
A=1;        %Amplituda
g=1;        %Wave number?
x=0:0.01:10;    %Wektor długości struny
w=10;        %Czestotliwosc w radianach
%% Nazwa wykresu
figure(1)
title("Vibrational patterns of the string due to standing wave y=Acos(\gammax)sin(\omegat)")
xlabel("String length")
ylabel("Amplitude")
%% Główna pętla - wyświetlanie
for i=1:1:101
    set(gca,'NextPlot','replacechildren');
    y = A*cos(g*x)*sin(w*t(i));
    plot(x,y)
    ylim([-1 1])
    pause(0.01)
end