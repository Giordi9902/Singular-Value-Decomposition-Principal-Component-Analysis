clear all, close all,  clc

% Centro dei dati (media)
xC = [2;1;];
% Assi principali
sig = [2; .5];

% Rotazione della nuvola di pi/3
theta = pi/3;
% Costruzione della matrice di rotazione
R = [cos(theta) -sin(theta);
    sin(theta) cos(theta)];

% Creazione di 10000 punti
nPoints = 10000;
X = R * diag(sig)*randn(2,nPoints) + diag(xC)*ones(2,nPoints);

% Plot della nuvola di dati
subplot(1,2,1)
scatter(X(1,:),X(2,:),'k.','LineWidth',2)
hold on, box on, grid on
axis([-6 8 -6 8])

% Calcolo media
Xavg = mean(X,2);
% Calcolo dati sottratti della media
B = X - Xavg*ones(1,nPoints);
%Ricerca delle PCA con svd
[U,S,V]=svd(B/sqrt(nPoints),'econ');

subplot(1,2,2)
% Plot dei dati per evidenziare PCA
scatter(X(1,:),X(2,:),'k.','LineWidth',2)
hold on, box on, grid on
axis([-6 8 -6 8])

theta = (0:.01:1)*2*pi;
[Xstd] = U*S*[cos(theta); sin(theta)];
% Plot degli intervalli di confidenza
plot(Xavg(1)+Xstd(1,:),Xavg(2)+Xstd(2,:),'r-','LineWidth',1.5)
plot(Xavg(1)+2*Xstd(1,:),Xavg(2)+2*Xstd(2,:),'r-','LineWidth',1.5)
plot(Xavg(1)+3*Xstd(1,:),Xavg(2)+3*Xstd(2,:),'r-','LineWidth',1.5)

% Plot delle componenti principali
plot([Xavg(1) Xavg(1)+U(1,1)*S(1,1)], ...
    [Xavg(2) Xavg(2)+U(2,1)*S(2,1)],'c-','LineWidth',1.5)
plot([Xavg(1) Xavg(1)+U(1,2)*S(2,2)], ...
    [Xavg(2) Xavg(2)+U(2,2)*S(2,2)],'c-','LineWidth',1.5)

set(gcf,'Position',[1400 100 3*600 3*300])