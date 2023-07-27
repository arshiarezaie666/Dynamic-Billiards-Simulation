function [toop,rr]=barhord_miz(biliard,nball,toop_1,model)
toop(1)=toop_1;
if toop(1).s~=1
r=.25;
%------------------------------------------------------- chap--------------------------------------------------------
e=1;
t=toop(1).t;v_y_1=toop(1).v_y;v_x_1=toop(1).v_x;omegaz1=toop(1).omegaz;
if (.8<toop(1).y&&toop(1).y<9.2)&&(toop(1).x-r<0)
    if toop(1).v_x<0
        toop(1).v_x=-e*toop(1).v_x;v_x_2=toop(1).v_x;toop(1).khord_miz=2;
        toop(1).t=v_t(toop(1).v_x,toop(1).v_y);
        if biliard.model==3
            if t>90&&t<180
                ff=abs((v_x_1-v_x_2)*biliard.moo_miz);omegaz1=toop(1).omegaz;
                if omegaz1>0
                    if v_y_1-biliard.r*omegaz1>0;
                        toop(1).omegaz=ff/(biliard.r)^2*2.5+toop(1).omegaz;toop(1).v_y=-ff+v_y_1;
                    end
                    if v_y_1-biliard.r*omegaz1<0;
                        toop(1).omegaz=-ff/(biliard.r)^2*2.5+toop(1).omegaz;toop(1).v_y=ff+v_y_1;
                    end
                else
                    toop(1).omegaz=ff/(biliard.r)^2*2.5+toop(1).omegaz;toop(1).v_y=-ff+v_y_1;
                end;end;
            if t>180&&t<270
                ff=abs((v_x_1-v_x_2)*biliard.moo_miz);
                
                if omegaz1>0;
                    
                    toop(1).omegaz=-ff/(biliard.r)^2*2.5+toop(1).omegaz;
                    toop(1).v_y=ff+v_y_1;
                    
                    
                else
                    if -v_y_1+biliard.r*omegaz1<0
                        
                        toop(1).omegaz=ff/(biliard.r)^2*2.5+toop(1).omegaz;
                        toop(1).v_y=-ff+v_y_1;
                    end
                    if -v_y_1+biliard.r*omegaz1>0
                        
                        toop(1).omegaz=-ff/(biliard.r)^2*2.5+toop(1).omegaz;
                        toop(1).v_y=ff+v_y_1;
                    end;end;end;end;
        toop(1).khord_miz=1;toop(1).t=v_t(toop(1).v_x,toop(1).v_y); toop(1).v=sqrt((toop(1).v_x)^2+(toop(1).v_y)^2);toop=toop(1);
    end;end;
% -------------------------------------------------------bala-------------------------------------------------------------
% ---------------------------------------bala------------------------------------------------
if toop(1).y+r-10>0
    if (.8<toop(1).x&&toop(1).x<8.8)||(10.3<toop(1).x&&toop(1).x<18.2)
        if toop(1).v_y>0
            toop(1).v_y=-e*toop(1).v_y;v_y_2=toop(1).v_y;
%             toop(1).t=v_t(toop(1).v_x,toop(1).v_y);
            if biliard.model==3
%                 disp(toop(1))
                if t<90
                  
                    omegaz1=toop(1).omegaz;ff=(v_y_1-v_y_2)*biliard.moo_miz
                    if omegaz1>0
                        if v_x_1-biliard.r*omegaz1>0;
                       
                            toop(1).omegaz=ff/(biliard.r)^2*2.5+toop(1).omegaz;
                            toop(1).v_x=-ff+v_x_1;
                        end
                        if v_x_1-biliard.r*omegaz1<0;
                         
                            %                         toop(1).v_x=(-ff+v_x_1+biliard.r*omegaz1)/2;toop(1).omegaz=toop(1).v_x/biliard.r;
                            toop(1).omegaz=-ff/(biliard.r)^2*2.5+toop(1).omegaz;
                            toop(1).v_x=ff+v_x_1;
                            
                        end;
                    else
                       
                            toop(1).omegaz=ff/(biliard.r)^2*2.5+toop(1).omegaz;
                            toop(1).v_x=ff+v_x_1;
                        end;end;
                if t>90
                    omegaz1=toop(1).omegaz;ff=(v_y_1-v_y_2)*biliard.moo_miz;
                    if omegaz1>0
                        
                        
                        toop(1).omegaz=-ff/(biliard.r)^2*2.5+toop(1).omegaz;
                        toop(1).v_x=ff+v_x_1;
                        
                        
                    else
                        if v_x_1-biliard.r*omegaz1>0;
                            toop(1).omegaz=+ff/(biliard.r)^2*2.5+toop(1).omegaz;
                            toop(1).v_x=-ff+v_x_1;
                        end
                        if v_x_1-biliard.r*omegaz1<0;
                            %                         toop(1).v_x=(-ff+v_x_1+biliard.r*omegaz1)/2;toop(1).omegaz=toop(1).v_x/biliard.r;
                            toop(1).omegaz=-ff/(biliard.r)^2*2.5+toop(1).omegaz;
                            toop(1).v_x=ff+v_x_1;
                        end;end; end;end;
                           

            toop(1).t=v_t(toop(1).v_x,toop(1).v_y);toop(1).khord_miz=1; toop(1).v=sqrt((toop(1).v_x)^2+(toop(1).v_y)^2);toop=toop(1);
%              disp(toop(1))
        end;end;end;
%  paeen---------------------------------------------------------------------------------------------------
%paeen----------------------------------------------------------------------------------------------
if toop(1).y-r<0
    if (.8<toop(1).x&&toop(1).x<8.8)||(10<toop(1).x&&toop(1).x<18.1)
        if toop(1).v_y<0
            toop(1).v_y=-e*toop(1).v_y;toop(1).khord_miz=1;v_y_2=toop(1).v_y;
            toop(1).t=v_t(toop(1).v_x,toop(1).v_y);
            if biliard.model==3
                if t>270
                    omegaz1=toop(1).omegaz;ff=-(v_y_1-v_y_2)*biliard.moo_miz;
                    if omegaz1>0
                        
                        toop(1).omegaz=-ff/(biliard.r)^2*2.5+toop(1).omegaz;
                        toop(1).v_x=-ff+v_x_1;
                    else
                        if v_x_1+biliard.r*omegaz1>0;
                            toop(1).omegaz=-ff/(biliard.r)^2*2.5+toop(1).omegaz;
                            toop(1).v_x=-ff+v_x_1;
                         
                        end
                        if v_x_1+biliard.r*omegaz1<0;
                            toop(1).omegaz=ff/(biliard.r)^2*2.5+toop(1).omegaz;
                            toop(1).v_x=+ff+v_x_1;
                         
                        end;end;end;
                if t<270
                    omegaz1=toop(1).omegaz;ff=-(v_y_1-v_y_2)*biliard.moo_miz;
                    if omegaz1<0
                        
                        toop(1).omegaz=ff/(biliard.r)^2*2.5+toop(1).omegaz;
                        toop(1).v_x=ff+v_x_1;
                        
                        
                        
                    else
                        if v_x_1+biliard.r*omegaz1>0;
                            toop(1).omegaz=-ff/(biliard.r)^2*2.5+toop(1).omegaz;
                            toop(1).v_x=-ff+v_x_1;
                        end
                        if v_x_1+biliard.r*omegaz1<0;
                            toop(1).omegaz=ff/(biliard.r)^2*2.5+toop(1).omegaz;
                            toop(1).v_x=ff+v_x_1;
                        end;end;end; end;
            toop(1).t=v_t(toop(1).v_x,toop(1).v_y);
            toop(1).khord_miz=1;
            toop(1).v=sqrt((toop(1).v_x)^2+(toop(1).v_y)^2);toop=toop(1);
        end; end; end;

%rast-------------------------------------------------------------
if (.8<toop(1).y&&toop(1).y<9.2)&&(toop(1).x+r>19.1)
    if toop(1).v_x>0
%         disp(toop(1))
        toop(1).v_x=-e*toop(1).v_x;
        v_x_2=toop(1).v_x;
        toop(1).khord_miz=1;
        toop(1).t=v_t(toop(1).v_x,toop(1).v_y);
        if biliard.model==3
            
            if t>0&&t<90
                omegaz1=toop(1).omegaz;ff=(v_x_1-v_x_2)*biliard.moo_miz;
                if omegaz1<0
                    if v_y_1+biliard.r*omegaz1>0;
                        toop(1).omegaz=-ff/(biliard.r)^2*2.5+toop(1).omegaz;
                        toop(1).v_y=-ff+v_y_1;
                    end
                    if v_y_1+biliard.r*omegaz1<0;
                        toop(1).omegaz=ff/(biliard.r)^2*2.5+toop(1).omegaz;
                        toop(1).v_y=ff+v_y_1;
                        
                    end;
                else
                    
                    toop(1).omegaz=-ff/(biliard.r)^2*2.5+toop(1).omegaz;
                    toop(1).v_y=-ff+v_y_1;
                    
                    
                end;
                
            end
            if t>270&&t<360
                omegaz1=toop(1).omegaz;ff=(v_x_1-v_x_2)*biliard.moo_miz;
                if omegaz1<0
                    
                    toop(1).omegaz=ff/(biliard.r)^2*2.5+toop(1).omegaz;
                    toop(1).v_y=ff+v_y_1;
                    
                    
                else
                    if v_y_1+biliard.r*omegaz1>0;
                        toop(1).omegaz=-ff/(biliard.r)^2*2.5+toop(1).omegaz;
                        toop(1).v_y=-ff+v_y_1;
                    end
                    if v_y_1+biliard.r*omegaz1<0;
                        toop(1).omegaz=ff/(biliard.r)^2*2.5+toop(1).omegaz;
                        toop(1).v_y=ff+v_y_1;
                            
                        end;
                    end;end; end;
            toop(1).t=v_t(toop(1).v_x,toop(1).v_y);
            toop(1).v=sqrt((toop(1).v_x)^2+(toop(1).v_y)^2);toop=toop(1);
%                     disp(toop(1))

        end;end;
end
    %               sorakh
    if toop(1).x<-.1||toop(1).y>10.2||toop(1).x>19.2||toop(1).y<-.1
        toop(1).s=1;toop(1).sorakh=1;toop(1).v_x=.8*toop(1).v_x;toop(1).v_y=.8*toop(1).v_y;toop(1).a_z=9.81;end;
    
    toop(1).v=sqrt((toop(1).v_x)^2+(toop(1).v_y)^2);toop=toop(1);
    
   
end