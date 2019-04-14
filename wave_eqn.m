function u=wave_eqn(f,g,a,b,T,M,N)
delx=(b-a)/N;
delt=T/M;
c=2;
unstable=delt>((delx)/sqrt(c));
if(~unstable)
    x=a:delx:b;
    t=0:delt:T;
    alpha=f(a);
    beta=f(b);
    for k=1:M+1
        u(1,k)=alpha;
        u(N+1,k)=beta;
    end
    for j=2:N
        u(j,1)=f(x(j));
        u(j,2)=u(j,1)+ ( delt* g(x(j)));
        
    end
    for k=2:M
        for j=2:N
            u(j,k+1)= ( 2 * u(j,k) )-( u(j,k-1) ) + ( c* ( (delt)^2/(delx)^2 ) )*( u(j+1,k)-2*u(j,k)+u(j-1,k));
        end
    end
    
else
    disp('Numerical solution might be unstable')
    return
end
u;
surf(t,x,u);
xlabel('t-axis');
ylabel('x-axis');
zlabel('Numerical solution');

u
end
    

    