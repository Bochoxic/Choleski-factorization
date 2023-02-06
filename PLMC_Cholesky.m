function [x]=PLMC_Cholevsky(A,B)
C=A'*A;
b=A'*B;
[~,m]=size(C);
R=fact_cholevsky(C);
w=forward_substitution(R',b,m);
x=back_substitution(R,w,m);
end

