
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%    billiard  simulation                                                 %
%    date :  12/1/2021;                                                   %
%    Programmer: ARSHIA  REZAIE                                           %

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all;
clear all;
clc;
biliard=struct();a=figure('Units','characters','Renderer','opengl');ii=0;
bg = uibuttongroup('Visible','on','Position',[0 0 .3 1]);
h1 = uicontrol(bg,'Style','togglebutton','String','Play','Position',[150 300 100 30],'HandleVisibility','off','Value',0);
   txt = uicontrol('Style','text','Position',[900 655 333 44],'String','billiard simulation','FontSize',30);
      txt1 = uicontrol(bg,'Style','text','Position',[4 550 111 55],'String','simulation ','FontSize',10);
      txt2 = uicontrol(bg,'Style','text','Position',[40 450 111 55],'String','number of balls','FontSize',10);
   a.Position=[0 0 1500 800];
    bb=imread('billiard.png');
imshow(bb);
 h1.Value=0;a.Position=[0 0 1500 800];
       r3 = uicontrol(bg,'Style','popup','String',{'simple','mediom','advanced'},'Position', [155 500 200 100],'Value',1);
      txt2 = uicontrol(bg,'Style','edit','Position',[180 480 60 20],'String','2','FontSize',10);
while h1.Value==0
    pause(1)
end
% zoom(.2)
    biliard.model=r3.Value;nball=str2num(txt2.String);close all;r=.25;toop=struct();miz(1,89.9,1);haxes=gca;haxes.CameraTarget=[9.4 5 r];
h=uicontrol('style','slider');
hh=uicontrol('style','slider');
hhh=uicontrol('style','slider');
h.Position=[0 0 1260 20];
hh.Position=[0 0 20 666];
h.Value=.5;
hh.Value=0.25;
hhh.Value=.5;
h.BackgroundColor=[.1 .1 .1];
hh.BackgroundColor=[.1 .1 .1];
hhh.BackgroundColor=[.1 .1 .1];
hhh.Position=[1560 10 20 666];
r1 = uicontrol('Style','togglebutton','String','hit','Position',[444 33 100 30],'HandleVisibility','off','Value',0);biliard.moo=0;
view(0,89.9)

r1.Value=0;
    toop(1).v=0;

[toop(1).x,toop(1).y]=ginput(1);   toop(1).s=0;     toop(1).h=0;    toop(1).i=0;  toop(1).w=1;  toop(1).miz=0;    toop(1).a_z=0;  toop(1).z=r;       toop(1).sorakh=0;    toop(1).color=[1 1 1];  toop(1).z=r;        toop(1).khord=0;  toop(1).inertia=2/5*toop(1).w*r^2;toop(1).xgbl=0;toop(1).ygbl=0;toop(1).zgbl=0.25;toop(1).khord_miz=0;toop(1).v_z=0;toop(1).omega=0;toop(1).omegaz=0;
if nball>1
    [toop(2).x,toop(2).y]=ginput(1);
% toop(2).x=14;
% toop(2).y=5;

  toop(2).v=0;   toop(2).t=0;        toop(2).a_z=0;   toop(2).z=r;    toop(2).s=0;    toop(1).h=0;      toop(2).i=0;   toop(2).z=r;       toop(2).miz=0;    toop(2).a_z=0;      toop(2).color=[1 0 0];            toop(2).sorakh=0;      toop(2).khord=0;toop(2).v_x=toop(2).v*cosd(toop(2).t);toop(2).v_y=toop(2).v*sind(toop(2).t);toop(2).xgbl=0;toop(2).ygbl=0;toop(2).zgbl=0.25; toop(2).khord_miz=0;toop(2).v_z=0;toop(2).omega=0;toop(2).omegaz=0;
end
if nball>2
%   toop(3).x=14+.5*.85;
% toop(3).y=5+.5*.7;
[toop(3).x,toop(3).y]=ginput(1);
toop(3).v=0;    toop(3).t=0;       toop(3).s=0;      toop(3).h=0;    toop(3).i=0;    toop(3).miz=0;    toop(3).a_z=0;  toop(3).z=r;      toop(3).sorakh=0;    toop(3).color=[1 1 0];    toop(3).khord=0;     toop(3).v_x=toop(3).v*cosd(toop(3).t);toop(3).v_y=toop(3).v*sind(toop(3).t);toop(3).khord_miz=0;toop(3).v_z=0;toop(3).omega=0;toop(3).omegaz=0;
if nball>3
%toop(4)    
[toop(4).x,toop(4).y]=ginput(1);
%  toop(4).x=14+1*.85;
% toop(4).y=5+1*.7;
toop(4).v=0;    toop(4).t=0;        toop(4).s=0;     toop(4).h=0;    toop(4).i=0;    toop(4).miz=0;    toop(4).a_z=0;    toop(4).z=r;    toop(4).sorakh=0;    toop(4).color=[1 0 1];    toop(4).khord=0;    toop(4).v_x=toop(4).v*cosd(toop(4).t);toop(4).v_y=toop(4).v*sind(toop(4).t);toop(4).khord_miz=0;toop(4).v_z=0;toop(4).omega=0;toop(4).omegaz=0;
if nball>4
%toop(5)
[toop(5).x,toop(5).y]=ginput(1);
%  toop(5).x=14+.5*.85;
% toop(5).y=5-.5*.7;
toop(5).v=0;    toop(5).t=0;        toop(5).s=0;     toop(5).h=0;    toop(5).i=0;    toop(5).miz=0;    toop(5).a_z=0;    toop(5).z=r;    toop(5).sorakh=0;    toop(5).color=[0 1 1];    toop(5).khord=0;    toop(5).v_x=toop(5).v*cosd(toop(5).t);toop(5).v_y=toop(5).v*sind(toop(5).t);toop(5).khord_miz=0;toop(5).v_z=0;toop(5).omega=0;toop(5).omegaz=0;
if nball>5
%      toop(6).x=14+1*.85;
% toop(6).y=5-1*.7;
[toop(6).x,toop(6).y]=ginput(1);

    toop(6).v=0;    toop(6).t=0;        toop(6).s=0;     toop(6).h=0;    toop(6).i=0;    toop(6).miz=0;    toop(6).a_z=0;    toop(6).z=r;    toop(6).sorakh=0;    toop(6).color=[0 0 1];    toop(6).khord=0;    toop(6).v_x=toop(6).v*cosd(toop(6).t);toop(6).v_y=toop(6).v*sind(toop(6).t);toop(6).khord_miz=0;toop(6).v_z=0;toop(6).omega=0;toop(6).omegaz=0;
if nball>6
%     toop(7).x=14+1*.85;
%     toop(7).y=5;
    [toop(7).x,toop(7).y]=ginput(1);toop(7).v=0;    toop(7).t=0;        toop(7).s=0;     toop(7).h=0;    toop(7).i=0;    toop(7).miz=0;    toop(7).a_z=0;    toop(7).z=r;    toop(7).sorakh=0;    toop(7).color=[0 1 0];    toop(7).khord=0;    toop(7).v_x=toop(7).v*cosd(toop(7).t);toop(7).v_y=toop(7).v*sind(toop(7).t);toop(7).khord_miz=0;toop(7).v_z=0;toop(7).omega=0;toop(7).omegaz=0;
if nball>7
%  toop(8).x=14+2*.85;
%     toop(8).y=5;
    [toop(8).x,toop(8).y]=ginput(1);toop(8).v=0;    toop(8).t=0;        toop(8).s=0;     toop(8).h=0;    toop(8).i=0;    toop(8).miz=0;    toop(8).a_z=0;    toop(8).z=r;    toop(8).sorakh=0;    toop(8).color=[0 .5 0.5];    toop(8).khord=0;    toop(8).v_x=toop(8).v*cosd(toop(8).t);toop(8).v_y=toop(8).v*sind(toop(8).t);toop(8).khord_miz=0;toop(8).v_z=0;toop(8).omega=0;toop(8).omegaz=0;
if nball>8
%  toop(9).x=14+1.5*.85;
%     toop(9).y=5+.5*.7;
[toop(9).x,toop(9).y]=ginput(1);
            toop(9).v=0;    toop(9).t=0;        toop(9).s=0;     toop(9).h=0;    toop(9).i=0;    toop(9).miz=0;    toop(9).a_z=0;    toop(9).z=r;    toop(9).sorakh=0;    toop(9).color=[.5 0 .5];    toop(9).khord=0;    toop(9).v_x=toop(9).v*cosd(toop(9).t);toop(9).v_y=toop(9).v*sind(toop(9).t);toop(9).khord_miz=0;toop(9).v_z=0;toop(9).omega=0;toop(9).omegaz=0;
if nball>9
%  toop(10).x=14+1.5*.85;
%     toop(10).y=5-.5*.7;
[toop(10).x,toop(10).y]=ginput(1);
                toop(10).v=0;    toop(10).t=0;        toop(10).s=0;     toop(10).h=0;    toop(10).i=0;    toop(10).miz=0;    toop(10).a_z=0;    toop(10).z=r;    toop(10).sorakh=0;    toop(10).color=[.5 .5 0];    toop(10).khord=0;    toop(10).v_x=toop(10).v*cosd(toop(10).t);toop(10).v_y=toop(10).v*sind(toop(10).t);toop(10).khord_miz=0;toop(10).v_z=0;toop(10).omega=0;toop(10).omegaz=0;
end; end; end; end;end;end;end;end;
for ee=1:nball
    [x, y, z]=sphere(10);r=.25;x1=toop(ee).x;y1=toop(ee).y;z1=toop(ee).z;toop(ee).h=surf(r*x+x1,r*y+y1,r*z+z1,'Facecolor',toop(ee).color);
end
  xx=toop(1).x-9.5; yy=toop(1).y-5;biliard.dt=0.057;sss=0;
    % loop
    t=0;
%     clf;miz(33,45,1);haxes.CameraTarget=[9.4 5 r]; view(2*h.Value*180-180,hh.Value*90)
while 1==1
    t=t+1;
     for qq=1:nball
vmat(qq)=toop(qq).v;
     end
    if max(vmat)<.05
        for qq=1:nball
            toop(qq).v=0;
  set(toop(qq).h,'visible','on')
        end
 r1.Value=0;
    else
        r1.Value=1;        
    end
while r1.Value==0
  view(2*h.Value*180-180,hh.Value*90);hhh.Value=.5;haxes.CameraTarget=[toop(1).x  toop(1).y r];pause(.1);zoom(hhh.Value*2);
end
if biliard.model==3
     if max(vmat)<.05
    biliard.moo_miz=0;a=figure(3);biliard.r=1;a.Position=[360 178 560 420];polar(linspace(0,2*pi,100),1*ones(1,100),'k');a1=uicontrol('style','slider');a1.Position=[4 0 20 400];a1.BackgroundColor=[.1 .1 .1];a1.Value=0;
    a2 = uicontrol('Style','togglebutton','String','hit position','Position',[444 33 100 30],'HandleVisibility','off','Value',0);
    while a2.Value==0
        biliard.vchob=2.4*a1.Value+.2;pause(.2)
    end
    [xshut yshut]=ginput(1);yshut=biliard.r*yshut;xshut=biliard.r*xshut;yshut=yshut*.1;
    if abs(yshut)<.04
        yshut=0.00001;
    end;
    if abs(xshut)<.04
        xshut=0.00001;
    end;
    biliard.germchob=.1;biliard.germtoop=.1;biliard.momantoop=2/5*biliard.germtoop*biliard.r^2;toop(1).v=biliard.germchob*biliard.vchob/biliard.germtoop;toop(1).omega=5/2*(yshut)/(biliard.r^2)*toop(1).v+toop(1).v/biliard.r;toop(1).v=toop(1).omega*biliard.r;toop(1).omegaz=5/2*toop(1).v*xshut/(biliard.r)^2;
    close(a)
  ii=1;
%     r1.Value=0;
    end
% else
%     toop(1).v=2.8;
end
for qq=1:nball
    set(toop(qq).h,'visible','off')
end
% if biliard.model<3
%     ii=1;
% end
if biliard.model==3
  if ii==1
    b=haxes.CameraPosition;
xx=toop(1).x-b(1);yy=toop(1).y-b(2);toop(1).t=v_t(xx,yy);%bgview = uibuttongroup('Visible','on','Position',[0 0 .1 .1]);view1= uicontrol(bgview,'Style','radiobutton','String','view 1','Position',[10 64 100 30],'HandleVisibility','off','Value',0);view2= uicontrol(bgview,'Style','radiobutton','String','view 2','Position',[10 34 100 30],'HandleVisibility','off','Value',1);view3 = uicontrol(bgview,'Style','radiobutton','String','view 3','Position',[10 4 100 30],'HandleVisibility','off','Value',0);
r1.Value=0;
% if biliard.model<3
%     toop(1).v=2.5;
% end
ii=0;
  end
end
if biliard.model<3
    if max(vmat)<.05
            b=haxes.CameraPosition;
xx=toop(1).x-b(1);yy=toop(1).y-b(2);toop(1).t=v_t(xx,yy);
    toop(1).v=2.5;
    end
    r1.Value=0;
end


%    if biliard.model<3
%            b=haxes.CameraPosition;
% xx=toop(1).x-b(1);yy=toop(1).y-b(2);toop(1).t=v_t(xx,yy);%bgview = uibuttongroup('Visible','on','Position',[0 0 .1 .1]);view1= uicontrol(bgview,'Style','radiobutton','String','view 1','Position',[10 64 100 30],'HandleVisibility','off','Value',0);view2= uicontrol(bgview,'Style','radiobutton','String','view 2','Position',[10 34 100 30],'HandleVisibility','off','Value',1);view3 = uicontrol(bgview,'Style','radiobutton','String','view 3','Position',[10 4 100 30],'HandleVisibility','off','Value',0);
% r1.Value=0;
%    end
    toop(1).v_x=toop(1).v*cosd(toop(1).t);toop(1).v_y=toop(1).v*sind(toop(1).t);
    for u=1:nball
        toop(u).xgbl=toop(u).x;toop(u).x=toop(u).x+toop(u).v_x*biliard.dt;toop(u).ygbl=toop(u).y;toop(u).y=toop(u).y+toop(u).v_y*biliard.dt;toop(u).zgbl=toop(u).z;toop(u).z=toop(u).z-.5*toop(u).a_z*biliard.dt^2-toop(u).v_z*biliard.dt;toop(u).v_z=toop(u).a_z*biliard.dt;
        if biliard.model>=2
            toop(u).omega=toop(u).v/r;
            if biliard.model==3
                sig=sign(toop(u).omegaz);
                toop(u).omegaz=sig*(abs(toop(u).omegaz)-.1*biliard.dt);
                if sig~=sign(toop(u).omegaz)
                    toop(u).omegaz=0;
                end
                if  abs(toop(u).omegaz)<3
                    toop(u).omegaz=0;
                end;end;end;end;
    for u=1:nball
        if toop(u).v>0
            toop(u).v=toop(u).v-biliard.moo*9.81*biliard.dt;
            if toop(u).v<0
                toop(u).v=0;
            end;end;end;
    for i=1:nball
        toop(i).v_x=toop(i).v*cosd(toop(i).t);toop(i).v_y=toop(i).v*sind(toop(i).t);
    end
    
          for tt=1:nball
              toop(tt)=barhord_miz(biliard,nball,toop(tt),biliard.model);
 end;
for i=1:nball
    if toop(i).khord>=1
        toop(i).khord=toop(i).khord-1;
end;end;
for o=1:nball-1
    for p=o+1:nball
        if toop(o).khord==0&&toop(p).khord==0
            fasele=sqrt((toop(o).x-toop(p).x)^2+(toop(o).y-toop(p).y)^2);
            if round(fasele*1000)/1000-.5<=0
                [toop(o),toop(p),f]=barkhord(toop(o),toop(p));toop(o).khord=toop(o).khord+2;toop(p).khord=toop(p).khord+2;
            end;end;end;end;
for aa=1:nball
    if toop(aa).v>0
        toop(aa).i=rad2deg(toop(aa).omega*biliard.dt);
    end;end;
for ee=1:nball
    if toop(ee).z>-2
        [toop(ee)]=rotatee(biliard.model,x,y,z,toop(ee),toop(ee).i);
    end;end;
%drawnow limitrate
 pause(.00001)
% vid(t)=getframe;

for qq=1:nball
%     set(toop(qq).h,'visible','off')
end;
% disp(r1.Value)
end;
for qq=1:nball
    set(toop(qq).h,'visible','on')
end
%  movie(vid,1)
%   VideoWriter(vid,'billiard.avi')