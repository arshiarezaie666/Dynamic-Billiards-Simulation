function [too1]=rotatee(model,x,y,z,toop,i)
toop(1)=toop;dt=0.057;  r=.25;x1=toop(1).x;y1=toop(1).y;z1=toop(1).z;
if toop(1).v==0
    toop(1).h=surf(toop(1).h.XData,toop(1).h.YData,toop(1).h.ZData,'Facecolor',toop(1).color);
end
if toop(1).v>0
    toop(1).h=surf(toop(1).h.XData-mean(mean(toop(1).h.XData))+x1,toop(1).h.YData-mean(mean(toop(1).h.YData))+y1,toop(1).h.ZData-mean(mean(toop(1).h.ZData))+z1,'Facecolor',toop(1).color);
    if model>1
        if toop(1).t>0&&toop(1).t<90
            rotate(toop(1).h,[-sind(toop(1).t) cosd(toop(1).t) 0],i,[toop(1).x toop(1).y toop(1).z])
        end
        if toop(1).t>90&&toop(1).t<180
            rotate(toop(1).h,[-sind(toop(1).t) cosd(toop(1).t) 0],i,[toop(1).x toop(1).y toop(1).z])
        end
        if toop(1).t>180&&toop(1).t<270
            rotate(toop(1).h,[-sind(toop(1).t) cosd(toop(1).t) 0],i,[toop(1).x toop(1).y toop(1).z])
        end
        if toop(1).t>270&&toop(1).t<360
            rotate(toop(1).h,[-sind(toop(1).t) cosd(toop(1).t) 0],i,[toop(1).x toop(1).y toop(1).z])
        end
        rotate(toop(1).h,[0 0 1],rad2deg(toop(1).omegaz*dt),[toop(1).x toop(1).y toop(1).z])
    end
end
too1=toop(1);

end
