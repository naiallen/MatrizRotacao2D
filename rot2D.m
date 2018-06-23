%% --Matriz de Rotaçao 2D--------------------------------------------------
%  Autora: Naialen Lima             
%--------------------------------------------------------------------------
close all
clear
clc

%Sistema 2 esta rotacionado 30 graus em realacao ao Sistema 1

%Entrada de dados - Conjunto de coordenadas do sistema 1
xy=[10 10.25 10.5 10.5 10.75 11 11.25 11.5 11.75 12 12.25 12.5 12.75 13;...
    5 5.5 6 6 7 6.5 6 8 6.5 6.5 7 6 5.5 5];

theta = 30; %[deg]

%Matriz de rotação Sis. 2 em relação ao Sis. 1
R12 = [ cosd(theta) sind(theta);...
       -sind(theta) cosd(theta)];

%Matriz de rotação Sis. 1 em relação ao Sis. 2
R21 = [cosd(theta) -sind(theta);...
       sind(theta)  cosd(theta)];
   
%Rotação 2 em relação a 1
xy2 =xy'*R12;
   
s1 = [0 0 15; 15 0 0];
s2 = s1'*R12;
plot(s1(1,:), s1(2,:),'-m', 'LineWidth',2)
hold on
plot(s2(:,1), s2(:,2),'-g', 'LineWidth',2)
hold on
plot(xy(1,:), xy(2,:),'--rs','LineWidth',2,'MarkerEdgeColor', 'm')
hold on
plot(xy2(:,1), xy2(:,2),'--rs','LineWidth',2,'MarkerEdgeColor', 'g')


        