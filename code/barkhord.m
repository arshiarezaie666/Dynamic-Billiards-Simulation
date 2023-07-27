function [toop_11,toop_22,f]=barkhord(toop_1,toop_2)

r=.25;
e=1;
% syms a b
toop(1)=toop_1;
toop(2)=toop_2;
            
%        brkhord kamel
% fasele=sqrt((toop(1).x-toop(2).x)^2+(toop(1).y-toop(2).y)^2);
% if fasele-.5<=0

% 234
% 
% if toop(2).y-toop(1).y>0&&toop(2).x-toop(1).x>0
%      sheeb_bakhord=atand((toop(2).y-toop(1).y)/(toop(2).x-toop(1).x));
% %   1
% end
% if toop(2).y-toop(1).y>0&&toop(2).x-toop(1).x<0
%      sheeb_bakhord=atand((toop(2).y-toop(1).y)/(toop(2).x-toop(1).x))+180;
% %     2
% end
% if toop(2).y-toop(1).y<0&&toop(2).x-toop(1).x<0
%      sheeb_bakhord=atand((toop(2).y-toop(1).y)/(toop(2).x-toop(1).x))+180;
% %      3
% end
% if toop(2).y-toop(1).y<0&&toop(2).x-toop(1).x>0
%      sheeb_bakhord=360+atand((toop(2).y-toop(1).y)/(toop(2).x-toop(1).x));
% %      4;
% end
% % 5
%         if sheeb_bakhord<0
%             sheeb_bakhord=360+sheeb_bakhord;
%         end
%         nncosd=toop(1).v*cosd(toop(1).t);
%         nnsind=toop(1).v*sind(toop(1).t);
%         if toop(1).t<180
%             costeta=cosd(90+sheeb_bakhord);
%             sinteta=sind(90+sheeb_bakhord);
%         end
%         if toop(1).t>180
%             costeta=cosd(90+sheeb_bakhord);
%             sinteta=sind(90+sheeb_bakhord);
%             
%         end
%        ab=nnsind-solve(nncosd-b*cosd(sheeb_bakhord)-costeta*a,b)*sind(sheeb_bakhord)+sinteta*a;
%         a=abs(double(vpa(solve(nnsind-solve(nncosd-b*cosd(sheeb_bakhord)-costeta*a==0,b)*sind(sheeb_bakhord)-sinteta*a))));
%         ff=@(a) sqrt(v1^2-a^2);
%         b=abs(double(ff(a)));
%         ff1=@(a) sqrt(v1^2-a^2);
%         ff2=@(a) (nnsind-sinteta*a)/sind(sheeb_bakhord);
%             toop(2).t=sheeb_bakhord;
%                toop(2).v=double(b)+.1;
%         toop(1).v=double(a);
% if toop(1).t<90&&sheeb_bakhord>toop(1).t&&f==1&&toop(2).y-toop(1).y>0&&toop(2).x-toop(1).x>0
% toop(1).t=sheeb_bakhord-90;
% 111;
% f=0;
% 
% elseif toop(1).t<90&&f==1&&toop(2).y-toop(1).y>0&&toop(2).x-toop(1).x>0&&sheeb_bakhord<toop(1).t
% toop(1).t=90-360+sheeb_bakhord;
% 222;
% f=0;
% elseif toop(1).t<90&&f==1&&toop(2).y-toop(1).y<0&&toop(2).x-toop(1).x>0&&sheeb_bakhord>toop(1).t
% toop(1).t=90+sheeb_bakhord;
% 222;
% f=0;
%     elseif toop(1).t<90&&f==1&&toop(2).y-toop(1).y>0&&toop(2).x-toop(1).x<0
% toop(1).t=sheeb_bakhord-90;
% 333;
% 
% f=0;
% 
%     elseif toop(1).t<90&&sheeb_bakhord<toop(1).t&&f==1&&toop(2).y-toop(1).y<0&&toop(2).x-toop(1).x>0
% toop(1).t=sheeb_bakhord-90;
% % 3333
% f=0;
% 
%     elseif toop(1).t<270&&sheeb_bakhord>toop(1).t&&toop(1).t>180&&f==1
% toop(1).t=sheeb_bakhord-90;
% % 444
% f=0;
%    
%     elseif toop(1).t<270&&sheeb_bakhord<toop(1).t&&toop(1).t>180&&f==1
% toop(1).t=sheeb_bakhord+90;
% % 555
% f=0;
%     
%     elseif toop(1).t>270&&sheeb_bakhord<toop(1).t&&toop(1).t<360&&f==1
% toop(1).t=360-90+sheeb_bakhord;
% % 6666
% toop(1)
% f=0;
%    
%     elseif toop(1).t>270&&sheeb_bakhord>toop(1).t&&toop(1).t<360&&f==1
% toop(1).t=sheeb_bakhord-90;
% % 666
% f=0;
%
%
%     elseif toop(1).t>90&&sheeb_bakhord<toop(1).t&&toop(1).t<180&&f==1
%
%     toop(1).t=sheeb_bakhord+90;
% %     777
%     f=0;
%
%     elseif toop(1).t>90&&sheeb_bakhord>toop(1).t&&toop(1).t<180&&f==1
%         toop(1).t=sheeb_bakhord-90;
% %         888
%         f=0;
%
%
% elseif toop(1).t<0
%          toop(1).t=360-toop(1).t;
% %          666
% end
% %      sheeb_bakhord
% %      toop(1)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vx1=toop(1).v*cosd(toop(1).t)
% Vy1=toop(1).v*sind(toop(1).t)
% Vx2=toop(2).v*cosd(toop(2).t)
% Vy1=toop(2).v*sind(toop(2).t)

amood=([toop(2).x-toop(1).x toop(2).y-toop(1).y])/sqrt((toop(1).x-toop(2).x)^2+(toop(1).y-toop(2).y)^2);
rasta=([toop(1).y-toop(2).y toop(2).x-toop(1).x])/sqrt((toop(1).x-toop(2).x)^2+(toop(1).y-toop(2).y)^2);
A=zeros(4,4);
A=[amood(1) amood(2) amood(1) amood(2);
    rasta(1) rasta(2) 0 0;...
    0 0 rasta(1) rasta(2);...
    -amood(1)  -amood(2) amood(1) amood(2)];
B=[amood(1)*toop(1).v_x+amood(2)*toop(1).v_y+amood(1)*toop(2).v_x+amood(2)*toop(2).v_y;...
    rasta(1)*toop(1).v_x+rasta(2)*toop(1).v_y;rasta(1)*toop(2).v_x+rasta(2)*toop(2).v_y;...
    (amood(1)*toop(1).v_x+amood(2)*toop(1).v_y-amood(1)*toop(2).v_x-amood(2)*toop(2).v_y)*e];
V=A\B;toop(1).v_x=V(1);toop(1).v_y=V(2);toop(2).v_x=V(3);toop(2).v_y=V(4);
toop(1).v=sqrt((toop(1).v_x)^2+(toop(1).v_y)^2);toop(2).v=sqrt((toop(2).v_x)^2+(toop(2).v_y)^2);
toop(1).t=v_t(toop(1).v_x,toop(1).v_y);toop(2).t=v_t(toop(2).v_x,toop(2).v_y);
toop_11=toop(1);toop_22=toop(2);f=0;
end