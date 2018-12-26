function [ fl ] = gaussianLPF( m,n,d )
fl=zeros(m,n);
for i=1:m
    for j=1:n
        D=sqrt((i-m/2).^2 + (j-n/2).^2);
        fl(i,j)=exp(-1*D.^2/(2*d.^2));
    end
end

end

