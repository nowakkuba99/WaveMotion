%% Propagacja fali
%JN 26.04.2022 Kraków
clear vars
close all
clc
%% Zmienne
t=0:0.01:2; %Wektor czasu
A=1;        %Amplituda
g=1;        %Wave number?
x=0:0.01:10;    %Wektor długości struny
w=10;        %Czestotliwosc w radianach
%fi = (g*x -w*t);    %Faza - jest stała
c=2;      %Prędkość fazowa
%% Nazwa wykresu
figure(1)
title("Transverse string deflections - the propagating wave y=Acos(\gammax-\omegat)")
xlabel("String length")
ylabel("Amplitude")
%% Główna pętla - wyświetlanie
for i=1:1:length(t)
    set(gca,'NextPlot','replacechildren');
    y = A*cos(g*(x - c*t(i)));
    plot(x,y)
    ylim([-1 1])
    pause(0.01)
end