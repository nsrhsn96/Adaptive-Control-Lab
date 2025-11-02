close all 
clear all 
clc 
dt=0.001; 
N0=20 ; 
N=N0/dt; 

%%%%%%%%% intial condition globally asmptotiacly stable 
x1=0.6;
x2=0.7;


xx1=x1;
xx2=x2;

  

%%%%%%%%%%%%%%%%%%%%%%%%
for z=1:N
    xo1=x1;
    xo2=x2;

    %%%%%%%%%%%%%%%%%%  1
    
    dx11=x2;
    dx21=-3*x1+x2*(2-3*x1^2 -x2^2);
    x1=xo1+dt*dx11/2;
    x2=xo2+dt*dx21/2;


    %%%%%%%%%%%%%%%%%%  2
    
    dx12=x2;
    dx22=-3*x1+x2*(2-3*x1^2 -x2^2);


    x1=xo1+dt*dx12/2;
    x2=xo2+dt*dx22/2;
 

    %%%%%%%%%%%%%%%%%%  3
  
    dx13=x2;
    dx23=-3*x1+x2*(2-3*x1^2 -x2^2);
    x1=xo1+dt*dx13/2;
    x2=xo2+dt*dx23/2;

    %%%%%%%%%%%%%%%%%%  4
   
    dx14=x2;
    dx24=-3*x1+x2*(2-3*x1^2 -x2^2);


    x1=xo1+(dt/6)*(dx11+2*dx12+2*dx13+dx14);
    x2=xo2+(dt/6)*(dx21+2*dx22+2*dx23+dx24);

    t(z+1)=z*dt;
    xx1(z+1)=x1;
    xx2(z+1)=x2;

end
figure(1)
plot(t,xx1)
xlabel('x1');
hold on
figure(2)
plot(t,xx2)
xlabel('x2');
% Plot the phase portrait
figure(3);
plot(xx1, xx2);
xlabel('x1');
ylabel('x2');
title('Phase Portrait');