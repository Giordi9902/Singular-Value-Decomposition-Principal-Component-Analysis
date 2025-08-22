clear all, close all, clc

load ovariancancer.mat;

[U,S,V] = svd(obs,'econ');

figure
subplot(1,2,1)
semilogy(diag(S),'k-o','LineWidth',2.5)
set(gca,'FontSize',15),axis tight, grid on
subplot(1,2,2)
plot(cumsum(diag(S))./sum(diag(S)),'k-o','LineWidth',2.5)
set(gca,'FontSize',15),axis tight, grid on
set(gcf,'Position',[1400 100 3*600 3*250])

figure, hold on
for i=1:size(obs,1)
    x = V(:,1)'*obs(i,:)';
    y = V(:,2)'*obs(i,:)';
    z = V(:,3)'*obs(i,:)';
    if(grp{i}=='Cancer')
        plot3(x,y,z,'rx','LineWidth',3);
    else
        plot3(x,y,z,'bo','LineWidth',3);
    end
    
end
xlabel('PC1'),ylabel('PC2'),zlabel('PC3'),
legend('Cancer','Normal')
view(85,25),grid on, set(gca,'FontSize',15)
