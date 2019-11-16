close all; clear all;
[trainpoints ,labels] = gettrainingdata; %create points to classify
h = 0.01;
[x, y] = meshgrid(0:h:1,0:h:1);
points = [x(:), y(:)]';

files = 'testing2.mat'; 
categories = classifypoints(files,points); 
plotpoints(trainpoints(:,1:10) ,labels(:,1:10),points ,categories); 
load(files);
title(sprintf('learning rate %g', learning_rate)); 
set(gca, 'FontSize', 18);
print('-depsc2', sprintf('w%d.eps', 1));
% 
% figure (4)
% %plot cost
% load(files);
% n = 1:1000:numel(savecost);
% h = semilogy(n, savecost(n));
% hold on;
% s = sprintf('learning rate %g\n', learning_rate);
% 
% legend(h, s); 
% xlabel('iteration') 
% ylabel('cost') 
% set(gca,'FontSize', 18); 
% print('-depsc2', 'cost.eps');