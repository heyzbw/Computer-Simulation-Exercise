% 仿真实验一，基本命令训练
m = 5; n= 3;

%% 生成m*m大小的单位矩阵
M1 = eye(m);

%% 生成全1矩阵
% 传入参数定义矩阵大小，单参数为n*n，双参数为m*n
M2 = ones(n);
M3 = ones(m,n);

%% 生成全零矩阵
% 传入参数与ones效果一致
M4 = zeros(n);
M5 = zeros(m,n);

%% 生成随机矩阵
% 矩阵元素大小在0和1之间
M6 = rand(m,n);

%% 获取对角线上的元素
% 默认获取主对角线，也可以指定第几个对角线
% 对象可以不是方阵
% 指定数为正数则向右上取，为负数向下取
M7 = diag(M6);
M8 = diag(M6,2);

%% 矩阵的"除法"
A = rand(n);
B = rand(n);
% A\B相当于inv(A)*B
% A/B相当于B*inv(A)
M9 = A\B;
M10 = A/B;
M11 = inv(A)*B;
M12 = B*inv(A);

%% 矩阵的乘法
% 矩阵之间相乘，按矩阵运算法则相乘
M13 = A*B;
% 矩阵点乘，矩阵中相同位置的元素相乘
M14 = A.*B;

%% 多项式求根
% roots以列向量的形式返回 p 表示的多项式的根
p = [1 2 -2 1];
r = roots(p);
% poly基本上就是roots的逆过程
pl = poly(r);

%% 卷积与去卷积
u = [1 2 1];
v = [2 1];
% 卷积运算，可用于多项式乘法
w = conv(u,v);
% 去卷积运算，可用于多项式除法,q为余数
[vd,q] = deconv(w,u);

%% 按字母顺序列出当前工作区中所有变量的名称
who

%% 列出工作区中的变量及大小和类型
whos

%% 杂项
% disp会显示变量的值
% size获取矩阵的大小
% length获取max(size(X))
disp(M5);
disp('Hello world');
disp(size(M5));
disp(length(M5));
