function x=forward_substitution(A,b,m)
x=zeros(0,m);
x(1)=b(1)/A(1,1);
for j=2:m
    v=0;
    for k=1:j-1
        v=v+x(k)*A(j,k);
    end
    x(j)=(b(j)-v)/A(j,j);
end
x=x';
end
