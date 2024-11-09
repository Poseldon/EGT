clc; clear;

% 参数设置
n = 500; % 迭代次数
Y1 = zeros(n+1, 1); 
Y2 = zeros(n+1, 1); 
Y3 = zeros(n+1, 1); 
Y4 = zeros(n+1, 1); % 初始化变量
dt = 0.8 / n; % 时间步长

% 初始条件
Y1(1) = 0.5; 
Y2(1) = 0.5; 
Y3(1) = 0.5; 
Y4(1) = 0.5;

% 调整后的模型参数值
Cgh = 150; Cgl = 140; Ng = 1.5; Tg = 0.8; L = 1;
Ceh = 3; Cel = 5; S = 1.2; Etg = 1.1; Coh = 8; Col = 4.5;
Rm = 1; Bho = 0.7; Cp = 900; Tp = 1.2;

% 初始化绘图
figure;

% 设置不同扰动强度 sigma
sigmas = [0, 0.25, 0.50, 1.00];
colors = {'r:', 'g-.', 'm:', 'b-'};
legend_texts = cell(1, length(sigmas));

for idx = 1:length(sigmas)
    sigma = sigmas(idx); % 当前噪声强度
    Y1 = zeros(n+1, 1); Y2 = zeros(n+1, 1); Y3 = zeros(n+1, 1); Y4 = zeros(n+1, 1); % 重置初始条件
    Y1(1) = 0.5; Y2(1) = 0.5; Y3(1) = 0.5; Y4(1) = 0.5;
    
    for t = 2:n+1
        % 生成四个独立的随机扰动
        dw = sqrt(dt) * randn(4, 1); 
        
        % 计算 y1, y2, y3, y4 的变化量
        dY1 = Y1(t-1) * (1 - Y1(t-1)) * (Cgl - Cgh + Etg + Ng + S - S * Y2(t-1) ...
               - Etg * Y3(t-1) * Y2(t-1) - Ng * Y3(t-1) * Y2(t-1) + Tg * Y3(t-1) * Y2(t-1)) * dt ...
               + sigma * Y1(t-1) * dw(1);

        dY2 = Y2(t-1) * (1 - Y2(t-1)) * (Cel - Ceh - Cel * Y3(t-1) + Col * Y3(t-1) ...
               + L * Y3(t-1) + S * Y1(t-1) + Cel * Y3(t-1) * Y1(t-1) - Col * Y3(t-1) * Y1(t-1) ...
               - L * Y3(t-1) * Y1(t-1)) * dt + sigma * Y2(t-1) * dw(2);

        dY3 = Y3(t-1) * (1 - Y3(t-1)) * (Col + Rm + Bho * Y2(t-1) - Coh * Y2(t-1) ...
               - Col * Y2(t-1) + Etg * Y1(t-1) - Rm * Y2(t-1) - Etg * Y1(t-1) * Y2(t-1)) * dt ...
               + sigma * Y3(t-1) * dw(3);

        dY4 = Y4(t-1) * (Y4(t-1) - 1) * Y3(t-1) * Y2(t-1) * (Cp - Tp * Y1(t-1)) * dt ...
               + sigma * Y4(t-1) * dw(4);
        
        % 更新变量 Y1, Y2, Y3, Y4
        Y1(t) = Y1(t-1) + dY1;
        Y2(t) = Y2(t-1) + dY2;
        Y3(t) = Y3(t-1) + dY3;
        Y4(t) = Y4(t-1) + dY4;
        
        % 保证变量在 [0, 1] 范围内
        Y1(t) = min(max(Y1(t), 0), 1);
        Y2(t) = min(max(Y2(t), 0), 1);
        Y3(t) = min(max(Y3(t), 0), 1);
        Y4(t) = min(max(Y4(t), 0), 1);
    end
    
    % 绘制不同 sigma 值下 Y1(t) 的变化曲线
    plot(Y1, colors{idx}, 'linewidth', 1.5);
    hold on;
    legend_texts{idx} = ['$\sigma=', num2str(sigma), '$'];
end

% 设置图像参数
xlabel('$t$', 'Interpreter', 'latex', 'FontSize', 12);
ylabel('$y_1(t)$', 'Interpreter', 'latex', 'FontSize', 12);
legend(legend_texts, 'Interpreter', 'latex', 'location', 'east');
set(gca, 'FontSize', 12);
axis([0 n 0 1]);
grid on; % 启用网格
set(0, 'defaultfigurecolor', 'w'); % 设置背景为白色

drawnow; % 确保立即显示图形
