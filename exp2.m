% 仿真实验二，绘图命令训练

%% 二维螺旋线(平面直角坐标系)
% 设置标题，label，自定义线条颜色和粗细实验
angle = linspace(0,8*pi,1000);
r = 1+2*angle/(2*pi);
x = r.*cos(angle);
y = r.*sin(angle);
plot(x,y,'LineWidth',3,'Color',[0.5 0.6 0.3]);
legend('二维螺旋线','Location','southwest');
title('二维螺旋线图');
xlabel('X坐标');
ylabel('Y坐标');

%% 两条弦函数(平面直角坐标系)
% 设置图例注释,线条样式'o'实验
x1 = 0:0.1:12;
y1 = sin(x1);
x2 = 0:0.1:12;
y2 = cos(x2);
plot(x1,y1,x2,y2,'o');
legend('sin','cos','Location','northeast');
title('正弦与余弦');
xlabel('X坐标');
ylabel('Y坐标');

%% 三维螺旋线（三维坐标）
% 三维坐标绘图,线条样式'.'实验
angle = linspace(0,8*pi,1000);
r = 1 + 2*angle/(2*pi);
x = r.*cos(angle);    
y = r.*sin(angle);
z = angle/pi; 
plot3(x,y,z,'r.');
legend('三维螺旋线','Location','northwest');
xlabel('X坐标');
ylabel('Y坐标');
zlabel('Z坐标');

%% 心形曲线（极坐标）
% 极坐标绘图，线条样式':'实验
theta = -pi:0.001:pi;
r = 1-sin(theta);
polarplot(theta,r,'r:','LineWidth',2.5);
legend('心形曲线','Location','northwest');

%% peaks曲面（三维坐标）
% surf绘图实验
surf(peaks(),'LineWidth',0.1);
legend('peaks','Location','northeast');
xlabel('X坐标');
ylabel('Y坐标');
zlabel('Z坐标');
