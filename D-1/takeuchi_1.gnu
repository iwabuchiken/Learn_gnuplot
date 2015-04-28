a = 1.0

rho(omega,phi,theta)=a*(-tan(theta)*cos(omega+phi)+1/cos(theta))\
					/(1+tan(theta)*tan(theta)*sin(omega+phi)*sin(omega+phi))

gx(u,phi,theta)=rho(u,phi,theta)*cos(phi)
gy(u,phi,theta)=rho(u,phi,theta)*sin(phi)
gz(u,phi,theta)=-rho(u,phi,theta)*tan(theta)*sin(u+phi)

set parametric

set hidden3d

#set ticslevel 10
set ticslevel 0
#set isosample 60
set isosample 20

#set urange[-1*pi:2*pi]
#set vrange[-1:2*pi]
#set urange[0:2*pi]
#set vrange[0:1.25*pi]
set urange[-2*pi:2*pi]
set vrange[-2*pi:2*pi]

#splot gx(u,v,0.1*pi), gy(u,v,0.5*pi), gz(u,v,0.1*pi) 
splot gx(u,v,0.1*pi), gy(u,v,0.1*pi), gz(u,v,0.1*pi) 
#replot gx(u,v,0.2*pi), gy(u,v,0.2*pi), gz(u,v,0.2*pi) 
#replot gx(u,v,0.25*pi), gy(u,v,0.25*pi), gz(u,v,0.25*pi) 
#replot gx(u,v,0.4*pi), gy(u,v,0.4*pi), gz(u,v,0.4*pi) 

#g:'[rho(


#set xrange[0:10]

#plot sin(x)
#pause -1
