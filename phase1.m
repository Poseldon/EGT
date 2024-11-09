clc; clear;  
  
figure(1);  
  
% 网格数据  
[x, y] = meshgrid(0:0.01:1, 0:0.01:1);  % 生成 x 和 y 的网格  
  
% 参数定义  
Cel = 45; Ceh = 40; Col = 10; L = 100; S = 20; Tg = 40; Etg = 10;  
  
z = (Cel - Ceh) ./ ((Cel + Col + L + S) + x .* (Cel - Col - L));  % z 只依赖于 x  
  
% 绘制三维曲面  
surf(x, y, z, 'EdgeColor', 'none'); colormap(cool);  
alpha(1);  % 透明度设置为 1（不透明）  
  
% 视角和坐标轴设置  
view([100 20]);  
set(gca, 'XTick', [0:0.2:1], 'YTick', [0:0.2:1], 'ZTick', linspace(min(z(:)), max(z(:)), 6));  
axis([0 1 0 1 min(z(:)) max(z(:))]);  
xlabel('$x$', 'Interpreter', 'latex');  
ylabel('$y$', 'Interpreter', 'latex');  
zlabel('$z$', 'Interpreter', 'latex');  
grid on;  
  
% 文本注释（注意：这些位置可能需要调整以更好地适应图形）  
%text(0.5, 0.5, 0.7*max(z(:)), '$(a) 示例文本，因为 z 不依赖于 y$', 'Interpreter', 'latex', 'HorizontalAlignment', 'center');  
% 注意：由于 z 不依赖于 y，所以 y = y* 的注释可能不适用  
% 以下是仅用于示例的文本注释  
%text(0.3, 0.3, 0.6*max(z(:)), '$(b) 示例文本 1$', 'Interpreter', 'latex', 'HorizontalAlignment', 'left');  
%text(0.7, 0.3, 0.6*max(z(:)), '$(c) 示例文本 2$', 'Interpreter', 'latex', 'HorizontalAlignment', 'right');  
  
% 箭头注释（注意：箭头的起点和终点需要根据实际图形进行调整）  
%annotation('arrow', [0.5 0.5 0], [0.3 0.5 0.6*max(z(:))]);  % 示例箭头 1  
%annotation('arrow', [0.5 0.5 0], [0.7 0.5 0.6*max(z(:))]);  % 示例箭头 2  
  
% 添加标题  
title('图1 相位图（z 不依赖于 y）');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Bho= 35; Coh = 40; Etg = 50; Col = 10; Rm = 100;   

figure(2);  
  
% 网格数据  
[x, y] = meshgrid(0:0.01:1, 0:0.01:1);  % 生成 x 和 y 的网格  
  
% 参数定义  

%z = (Cel - Ceh) ./ ((Cel + Col + L + S) + x .* (Cel - Col - L));  % z 只依赖于 x 
%z = 1+(Bho-Coh) ./ (x .* Etg + Coh + Col + Rm - Bho);  % z 只依赖于 x  
z = (Col+Rm+y*Bho-y*Coh-y*Col-y*Rm ) ./ (Etg*(y-1));
  
% 绘制三维曲面  
% 绘制三维曲面    
%surf(x, y, w, ’EdgeColor’, ’none’);   
surf(x, y, z, 'EdgeColor', 'none'); colormap(parula);  
alpha(1);  % 透明度设置为 1（不透明）   
  
% 视角和坐标轴设置  
view([100 20]);  
set(gca, 'XTick', [0:0.2:1], 'YTick', [0:0.2:1], 'ZTick', linspace(min(z(:)), max(z(:)), 0.6));  
axis([0 1 0 1 min(z(:)) max(z(:))]);  
xlabel('$x$', 'Interpreter', 'latex');  
ylabel('$y$', 'Interpreter', 'latex');  
zlabel('$z$', 'Interpreter', 'latex');  
grid on;  
  
% 文本注释（注意：这些位置可能需要调整以更好地适应图形）  
%text(0.5, 0.5, 0.7*max(z(:)), '$(a) 示例文本，因为 z 不依赖于 y$', 'Interpreter', 'latex', 'HorizontalAlignment', 'center');  
% 注意：由于 z 不依赖于 y，所以 y = y* 的注释可能不适用  
% 以下是仅用于示例的文本注释  
%text(0.3, 0.3, 0.6*max(z(:)), '$(b) 示例文本 1$', 'Interpreter', 'latex', 'HorizontalAlignment', 'left');  
%text(0.7, 0.3, 0.6*max(z(:)), '$(c) 示例文本 2$', 'Interpreter', 'latex', 'HorizontalAlignment', 'right');  
  
% 箭头注释（注意：箭头的起点和终点需要根据实际图形进行调整）  
%annotation('arrow', [0.5 0.5 0], [0.3 0.5 0.6*max(z(:))]);  % 示例箭头 1  
%annotation('arrow', [0.5 0.5 0], [0.7 0.5 0.6*max(z(:))]);  % 示例箭头 2  
  
% 添加标题  
title('图1 相位图（z 不依赖于 y）');

%%%%%%%%%%%%%%%%%%%%
 
figure(4);

% 网格数据
[x, w] = meshgrid(0:0.01:1, 0:0.01:1);

% 参数定义
Cgh = 35; 
Cgl = 10; 
Cp = 10; 
Ng = 80; 
Tg = 40; 
S = 20; 
Etg = 10;   

% 假设 y_star 是一个已知的值，但在本例中我们仅用于注释
y_star = 0.5; % 示例 y_star 值

% 计算 z（注意分母为零的情况，但在这里由于 w 的范围，它不太可能发生）
denominator = S + w .* (Ng + Etg - Tg);
% 在分母为零的情况下，设置 y 为 NaN（避免画出不合逻辑的值）
y = (Cgl - Cgh + Etg + Ng + S) ./ (denominator + (denominator == 0) * NaN);

% 绘制三维曲面
surf(x, y, w, 'EdgeColor', 'none'); 
colormap(parula);
alpha(1); % 设置适当的透明度

% 视角和坐标轴设置
view([100 20]);
set(gca, 'XTick', [0:0.2:1], 'YTick', [0:0.2:1], 'ZTick', [0:0.2:1]);

% 根据 y 计算的值动态设置 z 轴范围
axis([0 1 0 1 0 max(w(:))]); % 确保 z 轴显示整个曲面
xlabel('$x$', 'Interpreter', 'latex'); % 注意属性名的大小写
ylabel('$y$', 'Interpreter', 'latex');
zlabel('$z$', 'Interpreter', 'latex');
grid on;

% 文本注释
% 注意：文本注释的位置可能需要根据实际图形进行调整
text(0.5, 0.5, 0.5 * max(w(:)), '$(a) y = y^{*}$', 'Interpreter', 'latex', 'HorizontalAlignment', 'center');
text(0.3, 0.3, 0.5 * max(w(:)), '$(b) y < y^{*}, x \rightarrow 0$', 'Interpreter', 'latex', 'HorizontalAlignment', 'left');
text(0.7, 0.3, 0.5 * max(w(:)), '$(c) y > y^{*}, x \rightarrow 1$', 'Interpreter', 'latex', 'HorizontalAlignment', 'right');

% 箭头注释
% 注意：箭头的起点和终点也需要根据实际图形进行调整
annotation('arrow', [0.5 0.5], [0.3 0.4]); % 示例箭头，从 (0.5, 0.5) 到 (0.3, 0.4)
annotation('arrow', [0.5 0.7], [0.7 0.5]); % 另一个示例箭头，从 (0.5, 0.7) 到 (0.7, 0.5)

% 添加标题
title('图1 相位图');


%%%%%%%%%%%%%%%
figure(5);  
  
% 网格数据  
[x, y] = meshgrid(0:0.01:1, 0:0.01:1);  % 生成 x 和 y 的网格  
  
% 参数定义  
Cel = 45; Ceh = 40; Col = 10; L = 100; S = 20; Tg = 40; Etg = 10;  
  
z = (Cel - Ceh) ./ ((Cel + Col + L + S) + x .* (Cel - Col - L));  % z 只依赖于 x  
  
% 绘制三维曲面  
surf(x, y, z, 'EdgeColor', 'none'); colormap(parula);  
alpha(1);  % 透明度设置为 1（不透明）  
  
% 视角和坐标轴设置  
view([100 20]);  
set(gca, 'XTick', [0:0.2:1], 'YTick', [0:0.2:1], 'ZTick', linspace(min(z(:)), max(z(:)), 6));  
axis([0 1 0 1 min(z(:)) max(z(:))]);  
xlabel('$x$', 'Interpreter', 'latex');  
ylabel('$y$', 'Interpreter', 'latex');  
zlabel('$z$', 'Interpreter', 'latex');  
grid on;  
  
% 文本注释（注意：这些位置可能需要调整以更好地适应图形）  
%text(0.5, 0.5, 0.7*max(z(:)), '$(a) 示例文本，因为 z 不依赖于 y$', 'Interpreter', 'latex', 'HorizontalAlignment', 'center');  
% 注意：由于 z 不依赖于 y，所以 y = y* 的注释可能不适用  
% 以下是仅用于示例的文本注释  
%text(0.3, 0.3, 0.6*max(z(:)), '$(b) 示例文本 1$', 'Interpreter', 'latex', 'HorizontalAlignment', 'left');  
%text(0.7, 0.3, 0.6*max(z(:)), '$(c) 示例文本 2$', 'Interpreter', 'latex', 'HorizontalAlignment', 'right');  
  
% 箭头注释（注意：箭头的起点和终点需要根据实际图形进行调整）  
annotation('arrow', [0.5 0.5 0], [0.3 0.5 0.6*max(z(:))]);  % 示例箭头 1  
annotation('arrow', [0.5 0.5 0], [0.7 0.5 0.6*max(z(:))]);  % 示例箭头 2  
  
% 添加标题  
title('图1 相位图（z 不依赖于 y）');
%%%%%%%%%%%%%%%%%%%%
figure(6);  
  
% 网格数据  
[x, y] = meshgrid(0:0.01:1, 0:0.01:1);  % 生成 x 和 y 的网格  
  
% 参数定义  
Cp=20;Tp=47 
%z = (Cel - Ceh) ./ ((Cel + Col + L + S) + x .* (Cel - Col - L));  % z 只依赖于 x 
z = Cp ./ Tp;  % z 只依赖于 x  
  
% 绘制三维曲面  
surf(x, y, z, 'EdgeColor', 'none'); colormap(parula);  
alpha(1);  % 透明度设置为 1（不透明）  
  
% 视角和坐标轴设置  
view([100 20]);  
set(gca, 'XTick', [0:0.2:1], 'YTick', [0:0.2:1], 'ZTick', linspace(min(z(:)), max(z(:)), 6));  
axis([0 1 0 1 min(z(:)) max(z(:))]);  
xlabel('$x$', 'Interpreter', 'latex');  
ylabel('$y$', 'Interpreter', 'latex');  
zlabel('$z$', 'Interpreter', 'latex');  
grid on;  
  
% 文本注释（注意：这些位置可能需要调整以更好地适应图形）  
%text(0.5, 0.5, 0.7*max(z(:)), '$(a) 示例文本，因为 z 不依赖于 y$', 'Interpreter', 'latex', 'HorizontalAlignment', 'center');  
% 注意：由于 z 不依赖于 y，所以 y = y* 的注释可能不适用  
% 以下是仅用于示例的文本注释  
%text(0.3, 0.3, 0.6*max(z(:)), '$(b) 示例文本 1$', 'Interpreter', 'latex', 'HorizontalAlignment', 'left');  
%text(0.7, 0.3, 0.6*max(z(:)), '$(c) 示例文本 2$', 'Interpreter', 'latex', 'HorizontalAlignment', 'right');  
  
% 箭头注释（注意：箭头的起点和终点需要根据实际图形进行调整）  
annotation('arrow', [0.5 0.5 0], [0.3 0.5 0.6*max(z(:))]);  % 示例箭头 1  
annotation('arrow', [0.5 0.5 0], [0.7 0.5 0.6*max(z(:))]);  % 示例箭头 2  
  
% 添加标题  
title('图1 相位图（z 不依赖于 y）');
%%%%%%%%%%%%%%
figure(7);  
  
% 网格数据  
[x, y] = meshgrid(0:0.01:1, 0:0.01:1);  % 生成 x 和 y 的网格  
  
% 参数定义  
Bho= 25; Coh = 40; Etg = 50; Col = 40; Rm = 50; 
%z = (Cel - Ceh) ./ ((Cel + Col + L + S) + x .* (Cel - Col - L));  % z 只依赖于 x 
%z = 1+(Bho-Coh) ./ (x .* Etg + Coh + Col + Rm - Bho);  % z 只依赖于 x  
z = (Col+Rm+y*Bho-y*Coh-y*Col-y*Rm ) ./ (Etg*(y-1))
  
% 绘制三维曲面  
surf(x, y, z, 'EdgeColor', 'none'); colormap(parula);  
alpha(1);  % 透明度设置为 1（不透明）  
  
% 视角和坐标轴设置  
view([100 20]);  
set(gca, 'XTick', [0:0.2:1], 'YTick', [0:0.2:1], 'ZTick', linspace(min(z(:)), max(z(:)), 6));  
axis([0 1 0 1 min(z(:)) max(z(:))]);  
xlabel('$x$', 'Interpreter', 'latex');  
ylabel('$y$', 'Interpreter', 'latex');  
zlabel('$z$', 'Interpreter', 'latex');  
grid on;  
  
% 文本注释（注意：这些位置可能需要调整以更好地适应图形）  
%text(0.5, 0.5, 0.7*max(z(:)), '$(a) 示例文本，因为 z 不依赖于 y$', 'Interpreter', 'latex', 'HorizontalAlignment', 'center');  
% 注意：由于 z 不依赖于 y，所以 y = y* 的注释可能不适用  
% 以下是仅用于示例的文本注释  
%text(0.3, 0.3, 0.6*max(z(:)), '$(b) 示例文本 1$', 'Interpreter', 'latex', 'HorizontalAlignment', 'left');  
%text(0.7, 0.3, 0.6*max(z(:)), '$(c) 示例文本 2$', 'Interpreter', 'latex', 'HorizontalAlignment', 'right');  
  
% 箭头注释（注意：箭头的起点和终点需要根据实际图形进行调整）  
annotation('arrow', [0.5 0.5 0], [0.3 0.5 0.6*max(z(:))]);  % 示例箭头 1  
annotation('arrow', [0.5 0.5 0], [0.7 0.5 0.6*max(z(:))]);  % 示例箭头 2  
  
% 添加标题  
title('图1 相位图（z 不依赖于 y）');
%%%%%%%%%%%%%%%

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