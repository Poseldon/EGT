clc; clear;    
figure(8);    
  
% 网格数据    
[x, w] = meshgrid(0:0.01:1, 0:0.01:1);    
  
% 参数定义    
Cgh = 35; Cgl = 10; Cp = 10; Ng = 80; Tg = 40; S = 20; Etg = 10;   
% 注意：这里未定义 y_star，但它在文本注释中被提及  
% 假设 y_star 是一个已知的值，但在本例中我们仅用于注释  
y_star = 0.5; % 示例 y_star 值  
  
% 计算 z（注意分母为零的情况，但在这里由于 y 的范围，它不太可能发生）  
y = (Cgl-Cgh+Etg+Ng+S) ./ (S+w.*(Ng+Etg-Tg));  % 使用 ./ 来确保逐元素除法  
  
% 绘制三维曲面    
%surf(x, y, w, ’EdgeColor’, ’none’);   
surf(x, y, w, 'EdgeColor', 'none'); 
colormap(parula);    
alpha(1); % 设置适当的透明度    
  
% 视角和坐标轴设置    
view([100 20]);    
set(gca, 'XTick', [0:0.2:1], 'YTick', [0:0.2:1], 'ZTick', [0:0.2:1]);    
axis([0 1 0 1 0 max(z(:))]); % 自动调整 z 轴范围以显示整个曲面  
xlabel('$x$', 'Interpreter', 'latex');  % 注意属性名的大小写  
ylabel('$y$', 'Interpreter', 'latex');    
zlabel('$z$', 'Interpreter', 'latex');    
grid on;    
  
% 文本注释    
% 注意：文本注释的位置可能需要根据实际图形进行调整  
text(0.5, 0.5, 0.5*max(z(:)), '$(a) y = y^{*}$', 'Interpreter', 'latex', 'HorizontalAlignment', 'center');    
text(0.3, 0.3, 0.5*max(z(:)), '$(b) y < y^{*}, x \rightarrow 0$', 'Interpreter', 'latex', 'HorizontalAlignment', 'left');    
text(0.7, 0.3, 0.5*max(z(:)), '$(c) y > y^{*}, x \rightarrow 1$', 'Interpreter', 'latex', 'HorizontalAlignment', 'right');    
  
% 箭头注释    
% 注意：箭头的起点和终点也需要根据实际图形进行调整  
annotation('arrow', [0.5 0.5], [0.3 0.4]); % 示例箭头，从 (0.5, 0.5) 到 (0.3, 0.4)  
annotation('arrow', [0.5 0.7], [0.7 0.5]); % 另一个示例箭头，从 (0.5, 0.7) 到 (0.7, 0.5)  
  
% 添加标题  
title('图1 相位图');