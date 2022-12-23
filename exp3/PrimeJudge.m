function  [Judgenum,div] = PrimeJudge(x)
% 传两个参方便UI使用

% 原理在于素数不能被1和自身整除
% 可以利用遍历mod判断是否整除
for i = 2:x-1
    if 0==mod(x,i)
        Judgenum = 0;
        fprintf('%d is not one prime.\n',x);
        fprintf('Factorization:%d=%d*%d\n',x,i,x/i);
        div = i;
        break;
    elseif i==x-1
        Judgenum = 1;
        div = 0;
        fprintf('%d is one prime.\n',x);
    end
end
end