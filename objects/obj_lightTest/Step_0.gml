///Basic Rotation code.
if distance_to_point(MASTER.x,MASTER.y)!=0{direction=(point_direction(x,y,MASTER.x,MASTER.y)+(R/distance_to_point(MASTER.x,MASTER.y)))}
if distance_to_point(MASTER.x,MASTER.y)=0{direction=(point_direction(x,y,MASTER.x,MASTER.y)+(R))}

var dif = choose(0.1,-0.1,0);
glowSize += dif;
glowSize = clamp(glowSize,0.9,1.1);

lightTimer -= 1;
if lightTimer <= 0  {
    lightTimer = fun_cycleTimer(30,"minute");
    if lightColor = c_purple    {lightColor = c_red;exit;}
    if lightColor = c_red    {lightColor = c_green;exit;}
    if lightColor = c_green    {lightColor = c_blue;exit;}
    if lightColor = c_blue    {lightColor = c_red;exit;}
    }

