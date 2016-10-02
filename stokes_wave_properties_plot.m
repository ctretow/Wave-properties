% ---- Platform: MATLAB  ---- % 
% ---- user: ctretow     ---- %
% ---- Hydromechanics    ---- %
% ---- Wave properties   ---- %


% constants
lambda=100;                        % Wave leght
x=0;                               % Starting position
g=9.81;                            % Gravitational constant (Sweden) 
k=(2*pi/lambda)                    % Wave number
omega=sqrt(2*pi*g/lambda);         % Angular velocity
t=0:0.1:20;                        % Time vector 

for wave_ratio=0.01:0.01:0.09; 
zeta0=wave_ratio*lambda;
% first order wave profile
zeta1=zeta0*sin(omega*t-k*x);
%Stokes second order wave profile
zeta2=zeta0*cos(omega*t-k*x)+0.5*k*(zeta0^2)*cos(2*(omega*t-k*x));
figure(1)
subplot(2,1,1)
plot(t,zeta1)
title('First order wave profile, \lambda = 100, x=0')
xlabel('Time [s]')
ylabel('Wave profile [m]')
legend('\zeta=0.01','\zeta=0.02','\zeta=0.03','\zeta=0.04','\zeta=0.05','\zeta=0.06','\zeta=0.07','\zeta=0.08','\zeta=0.09')
hold on
grid on
subplot(2,1,2)
plot(t,zeta2)
title('Stokes second order wave profile, \lambda = 100, x=0')
xlabel('Time [s]')
ylabel('Wave profile [m]')
legend('\zeta=0.01','\zeta=0.02','\zeta=0.03','\zeta=0.04','\zeta=0.05','\zeta=0.06','\zeta=0.07','\zeta=0.08','\zeta=0.09')
hold on
grid on
end
