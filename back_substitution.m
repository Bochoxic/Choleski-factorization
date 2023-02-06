function x=back_substitution(A,b,m)
x=zeros(m,0);
x(m)=b(m)/A(m,m);
for j=m:-1:1
    v=0;
    for k=j+1:m
        v=v+x(k)*A(j,k);
    end
    x(j)=(b(j)-v)/A(j,j);
end
x=x';
end
