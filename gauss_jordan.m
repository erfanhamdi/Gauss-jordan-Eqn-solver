clear all
n=input('Enter number of Equations : ');
for i=1:n
    for i2=1:n+1
    c1(i,i2)=input('Enter the Coefficients of Eqn ')
    end
    
end
R=rref(c1);
coeff=c1(:,1:n);
if det(coeff)== 0
    message='there is no answer to it please try again'
    gauss_jordan;
else 
    for i3=1:n
        if R(i3,i3)==0
            message2='there is infinte solutions to  the problem please try again'
            gauss_jordan;
        end
    end
end
out1='the auugmeented gauss jordan maatrix is :'
R
answer=R(:,n+1);
out2='the answer is :'
answer
