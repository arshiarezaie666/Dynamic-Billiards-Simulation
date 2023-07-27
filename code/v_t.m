function t=v_t(v_x,v_y)
if v_y>=0
    if v_x>=0
        t=atand(v_y/v_x);
    end
    if v_x<0
        t=atand(v_y/v_x)+180;
end;end;
if v_y<0
    if v_x>0 
        t=360+atand(v_y/v_x);
    end
    if v_x<0
        t=atand(v_y/v_x)+180;
end;end;

