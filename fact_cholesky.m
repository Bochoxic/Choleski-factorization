function [R] = fact_cholevsky(A)
R=A;
[~,m]=size(A);
for k=1:m
    for j=(k+1):m
        R(j,j:m)=R(j,j:m)-R(k,j:m)*conj(R(k,j))/R(k,k);
    end
    R(k,k:m)=R(k,k:m)/sqrt(R(k,k));
end
for k=2:m
    for j=1:m
        if(j<k)
            R(k,j)=0;
        end
    end
end
end


