
%%%%%%%%%%%%%%%%%%%%%%%
clc;clear;
Cgh = 60; Cgl = 15; Cp = 10; Ng = 80; Tg = 40; S = 20; Etg = 10;  
Cel = 45; Ceh = 40; Col = 10; L = 10; Bho = 5; Coh = 10; Rm =1; Tp = 5;  
figure(1)
set(0, 'defaultfigurecolor', 'w');
[t,y]=ode45(@(t,y) hisb(t, y, Cgh, Cgl, Ng, Tg, L, Ceh, Cel, S, Etg, Coh, Col, Rm, Bho, Cp, Tp),[0,100],[0.5,0.3,0.2,0.3]);
points=1:1:length(t);
plot(t,y(:,1),'ro-','linewidth',1,'markersize',1,'markerfacecolor','r','markerindices',points);
hold on
plot(t,y(:,2),'b-','linewidth',1);
hold on
plot(t,y(:,3),'k-','linewidth',1);
hold on
plot(t,y(:,4),'g-','linewidth',1);
hold on
set(gca,'XTick',0:20:100,'YTick',[0.0:0.2:1.0])
set(gca,'YTickLabel',num2str(get(gca,'YTick')','%.1f'));
axis([0 4 -0.05 1.05])
xlabel('$t$','interpreter','latex');
ylabel('Probability');
zhuti=title('Tp = 5');
set(zhuti,'interpreter','latex')
legend('Regulators({\it x})', 'ESCOs({\it y})', 'Owners({\it w})', 'Tourists({\it p})', 'Interpreter', 'latex');  
hold off;
%%%%%%%%%%%%%%%%%%
clc;clear;
Cgh = 60; Cgl = 15; Cp = 10; Ng = 80; Tg = 40; S = 20; Etg = 10;  
Cel = 45; Ceh = 40; Col = 10; L = 10; Bho = 5; Coh = 10; Rm =1; Tp = 15;   
figure(2)
set(0, 'defaultfigurecolor', 'w');
[t,y]=ode45(@(t,y) hisb(t, y, Cgh, Cgl, Ng, Tg, L, Ceh, Cel, S, Etg, Coh, Col, Rm, Bho, Cp, Tp),[0,100],[0.5,0.3,0.2,0.3]);
points=1:1:length(t);
plot(t,y(:,1),'ro-','linewidth',1,'markersize',1,'markerfacecolor','r','markerindices',points);
hold on
plot(t,y(:,2),'b-','linewidth',1);
hold on
plot(t,y(:,3),'k-','linewidth',1);
hold on
plot(t,y(:,4),'g-','linewidth',1);
hold on
set(gca,'XTick',0:20:100,'YTick',[0.0:0.2:1.0])
set(gca,'YTickLabel',num2str(get(gca,'YTick')','%.1f'));
axis([0 4 -0.05 1.05])
xlabel('$t$','interpreter','latex');
ylabel('Probability');
zhuti=title('Tp = 15');
set(zhuti,'interpreter','latex')
legend('Regulators({\it x})', 'ESCOs({\it y})', 'Owners({\it w})', 'Tourists({\it p})', 'Interpreter', 'latex');  
hold off;
%%%%%%%%%%%%%%%%%
clc;clear;
Cgh = 60; Cgl = 15; Cp = 10; Ng = 80; Tg = 40; S = 20; Etg = 10;  
Cel = 45; Ceh = 40; Col = 10; L = 10; Bho = 5; Coh = 10; Rm =1; Tp = 50;   
figure(3)
set(0, 'defaultfigurecolor', 'w');
[t,y]=ode45(@(t,y) hisb(t, y, Cgh, Cgl, Ng, Tg, L, Ceh, Cel, S, Etg, Coh, Col, Rm, Bho, Cp, Tp),[0,100],[0.5,0.3,0.2,0.3]);
points=1:1:length(t);
plot(t,y(:,1),'ro-','linewidth',1,'markersize',1,'markerfacecolor','r','markerindices',points);
hold on
plot(t,y(:,2),'b-','linewidth',1);
hold on
plot(t,y(:,3),'k-','linewidth',1);
hold on
plot(t,y(:,4),'g-','linewidth',1);
hold on
set(gca,'XTick',0:20:100,'YTick',[0.0:0.2:1.0])
set(gca,'YTickLabel',num2str(get(gca,'YTick')','%.1f'));
axis([0 4 -0.05 1.05])
xlabel('$t$','interpreter','latex');
ylabel('Probability');
zhuti=title('Tp = 50');
set(zhuti,'interpreter','latex')
legend('Regulators({\it x})', 'ESCOs({\it y})', 'Owners({\it w})', 'Tourists({\it p})', 'Interpreter', 'latex');  
hold off;
%%%%%%%%%%%%%%
clc;clear;
Cgh = 60; Cgl = 15; Cp = 10; Ng = 80; Tg = 40; S = 20; Etg = 10;  
Cel = 45; Ceh = 40; Col = 10; L = 10; Bho = 5; Coh = 10; Rm =1; Tp = 150;   
figure(4)
set(0, 'defaultfigurecolor', 'w');
[t,y]=ode45(@(t,y) hisb(t, y, Cgh, Cgl, Ng, Tg, L, Ceh, Cel, S, Etg, Coh, Col, Rm, Bho, Cp, Tp),[0,100],[0.5,0.3,0.2,0.3]);
points=1:1:length(t);
plot(t,y(:,1),'ro-','linewidth',1,'markersize',1,'markerfacecolor','r','markerindices',points);
hold on
plot(t,y(:,2),'b-','linewidth',1);
hold on
plot(t,y(:,3),'k-','linewidth',1);
hold on
plot(t,y(:,4),'g-','linewidth',1);
hold on
set(gca,'XTick',0:20:100,'YTick',[0.0:0.2:1.0])
set(gca,'YTickLabel',num2str(get(gca,'YTick')','%.1f'));
axis([0 4 -0.05 1.05])
xlabel('$t$','interpreter','latex');
ylabel('Probability');
zhuti=title('Tp = 150');
set(zhuti,'interpreter','latex')
legend('Regulators({\it x})', 'ESCOs({\it y})', 'Owners({\it w})', 'Tourists({\it p})', 'Interpreter', 'latex');  
hold off;
%%%%%%%%%%%%%%%
clc;clear; 
Cgh = 35; Cgl = 15; Cp = 10; Ng = 80; Tg = 40; S = 20; Etg = 10;  
Cel = 45; Ceh = 40; Col = 10; L = 10; Bho = 15; Coh = 10; Rm = 15; Tp = 55;  
figure(15)
%subplot(2,1,1)
for i=0.1:0.2:1
    for j=0.1:0.2:1
        for k=0
            for l=0.1:0.2:1
            [t,y]=ode45(@(t,y) hisb(t, y, Cgh, Cgl, Ng, Tg, L, Ceh, Cel, S, Etg, Coh, Col, Rm, Bho, Cp, Tp),[0 50],[i j k l]);
            grid on
            %搞清楚你画的是哪三维的关系
            plot3(y(:,1),y(:,2),y(:,4),'linewidth',1);
            set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
            set(gca,'XTickLabel',num2str(get(gca,'XTick')','%.1f'));
            set(gca,'YTickLabel',num2str(get(gca,'YTick')','%.1f'));
            set(gca,'ZTickLabel',num2str(get(gca,'ZTick')','%.1f'));
            hold on
            axis([0 1 0 1 0 1])
            end
        end
    end
end
xlabel('$r$','interpreter','latex');
ylabel('$m$','interpreter','latex');
zlabel('$p$','interpreter','latex','Rotation',360);
title('g=0','interpreter','latex');
%%%%%%%%%%%%%%%%%%%%%%%%%g=1的子图
clc;clear; 
Cgh = 35; Cgl = 15; Cp = 10; Ng = 80; Tg = 40; S = 20; Etg = 10;  
Cel = 45; Ceh = 40; Col = 10; L = 10; Bho = 15; Coh = 10; Rm = 50; Tp = 15;   
figure(16)
%subplot(2,1,2)
for i=0.1:0.2:1
    for j=0.1:0.2:1
        for k=1
            for l=0.1:0.2:1
            [t,y]=ode45(@(t,y) hisb(t, y, Cgh, Cgl, Ng, Tg, L, Ceh, Cel, S, Etg, Coh, Col, Rm, Bho, Cp, Tp),[0 50],[i j k l]);
            grid on
            %搞清楚你画的是哪三维的关系
            plot3(y(:,1),y(:,2),y(:,4),'linewidth',1);
            set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
            set(gca,'XTickLabel',num2str(get(gca,'XTick')','%.1f'));
            set(gca,'YTickLabel',num2str(get(gca,'YTick')','%.1f'));
            set(gca,'ZTickLabel',num2str(get(gca,'ZTick')','%.1f'));
            hold on
            axis([0 1 0 1 0 1])
            end
        end
    end
end
xlabel('$r$','interpreter','latex');
ylabel('$m$','interpreter','latex');
zlabel('$p$','interpreter','latex','Rotation',360);
title('{\it\fontname{Bodoni MT}g}=1');
%%%%%%%%%%%%%%%%
