function haxes=miz(az,el,zzz )
% r=.25;
% a=-pi:pi/2:pi;
% ph=pi/4;
g= figure('position',[0 50 1300 570],'Units','centimeters');
haxes=axes;
haxes.XColor=[1 1 1];
haxes.YColor=[1 1 1];
haxes.ZColor=[1 1 1];
haxes.Color=[.94 .94 .94];
ax=axes;
ax.XLim=1.5*ax.XLim;
ax.YLim=1.5*ax.YLim;
ax.Visible='off';
% axis([-20 30 -20 25 -20 3])

% zoom(.1*zzz)
% ax.CameraTarget=[9.4 5 0];
plotcube([21 12 .5],[-1 -1 -.5],1,[77/256 100/256 164/256],1)
axis equal
hold on
% plotcube([39 24 -0.1],[-7 -7 -7],1,.6*[66/256 57/256 44/256],1)
for c=-1:0.1:-.1
    plotcube([.1 2 .3],[c-.1 c+.9 0],1,[140/256 57/256 22/256],0);plotcube([2 .1 .3],[c+.86 c-.1 0],1,[140/256 57/256 22/256],0);plotcube([.1 2 .3],[c-.1 -c+7.1 0],1,[140/256 57/256 22/256],0);plotcube([2 .1 .3],[-c-.2 c+11.1 0],1,[140/256 57/256 22/256],0);plotcube([2 .1 .3],[-c+16 c-.1 0],1,[140/256 57/256 22/256],0);plotcube([.1 2 .3],[c+20.05 c+8.1 0],1,[140/256 57/256 22/256],0);plotcube([2 .1 .3],[c+17.2 c+11.1 0],1,[140/256 57/256 22/256],0);plotcube([.1 2 .3],[c+20.05 -c-.2 0],1,[140/256 57/256 22/256],0);
end
plotcube([1 8.5 .4],[-1 .7 0],1,[140/256 57/256 22/256],1);plotcube([1 8.5 .4],[19 .7 0],1,[140/256 57/256 22/256],1);plotcube([8.2 1 .4],[.7 10 0],1,[140/256 57/256 22/256],1);plotcube([8.2 1 .4],[.7 -1 0],1,[140/256 57/256 22/256],1);plotcube([8 1 .4],[10.3 10 0],1,[140/256 57/256 22/256],1);plotcube([8 1 .4],[10.3 -1 0],1,[140/256 57/256 22/256],1);plotcube([21.3 .3 1.5],[-1.2 -1.2 -1],1,.9*[140/256 57/256 22/256],1);plotcube([21.3 .3 1.5],[-1 11 -1],1,.9*[140/256 57/256 22/256],1);plotcube([.3 12.5 1.5],[-1.2 -1.2 -1],1,.9*[140/256 57/256 22/256],1);plotcube([.3 12.5 1.5],[20 -1.2 -1],1,.9*[140/256 57/256 22/256],1)

[x y z]=cylinder(.3:.05:.7,22);
z=-z+1;surf(x-.25,y-.25,-6.4.*z,'Facecolor',[98/256 15/256 0/256]);surf(x-.25,y+10-.8+.29+.1+.65,-6.4.*z,'Facecolor',[98/256 15/256 0/256]);surf(x+9.475,y+10-.8+.29+.1+.65,-6.4.*z,'Facecolor',[98/256 15/256 0/256]);surf(x+9.475,y-.25,-6.4.*z,'Facecolor',[98/256 15/256 0/256]);surf(x+18.56+.65,y-.25,-6.4.*z,'Facecolor',[98/256 15/256 0/256]);surf(x+18.56+.65,y+10-.8+.29+.1+.65,-6.4.*z,'Facecolor',[98/256 15/256 0/256])
[x y z]=cylinder(0:.1:.8,22);z=-z+1;surf(x-.25,y-.25,+.01.*z,'Facecolor',[0/256 0/256 0/256]);surf(x-.25,y+10-.8+.29+.1+.65,+.01.*z,'Facecolor',[0/256 0/256 0/256]);surf(x+9.6,y+10-.8+.1+.29+.1+.65,+.01.*z,'Facecolor',[0/256 0/256 0/256]);surf(x+9.6,y-.35,+.01.*z,'Facecolor',[0/256 0/256 0/256]);surf(x+18.56+.65,y-.25,+.01.*z,'Facecolor',[0/256 0/256 0/256]);surf(x+18.56+.65,y+10-.8+.29+.1+.65,+.01.*z,'Facecolor',[0/256 0/256 0/256]);[x y z]=cylinder(.5,40);z=.35*z;x=x*.6;y=y*.6;[x1 y1 z1]=cylinder(.7,40);
for i=1:length(x);
    c=1:length(y1);xi=x1(i)+9.475;yi=y1(i)+10.3;hhhh=surf(.3*x+xi,.3*y+yi,z,'Facecolor',.9*[140/256 57/256 22/256]);set(hhhh,'linestyle','none');xi=x1(i)+9.475;yi=y1(i)+.3;hhhh=surf(.3*x+xi,.3*y-yi,z,'Facecolor',.9*[140/256 57/256 22/256]);set(hhhh,'linestyle','none')
    xi=x1(i)-.2; yi=y1(i)-10.2;
    hhhh=surf(.3*x+xi,.3*y-yi,z,'Facecolor',.9*[140/256 57/256 22/256]);
    rotate(hhhh,[0 0 1],45+180,[-.2 10.3 0])
    set(hhhh,'linestyle','none')
    %---------------------4
   
    xi=x1(i)-.2;yi=y1(i)+.2;
    hhhh=surf(.3*x+xi,.3*y-yi,z,'Facecolor',.9*[140/256 57/256 22/256]);
    rotate(hhhh,[0 0 1],-45,[-.2 -.2 0])
    %     hold on
    set(hhhh,'linestyle','none')
   %---------------------5
   
    xi=-x1(i)+19.2; yi=y1(i)-10.2;
    hhhh=surf(.3*x+xi,.3*y-yi,z,'Facecolor',.9*[140/256 57/256 22/256]);
    rotate(hhhh,[0 0 1],-45+180,[19.2 10.3 0])
    set(hhhh,'linestyle','none')
   %---------------------6
 
    xi=-x1(i)+19.2;yi=y1(i)+.2;
    hhhh=surf(.3*x+xi,.3*y-yi,z,'Facecolor',.9*[140/256 57/256 22/256]);
    rotate(hhhh,[0 0 1],+45,[19.2 -.2 0])
    
    set(hhhh,'linestyle','none')
end  %---------------------7
view(az,el)
% light('Position',[5 5.5 3],'Style','infinite')
% xlabel('xx')
% box off
% axis off
% grid off
zoom(.07)
