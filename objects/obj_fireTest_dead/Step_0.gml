var dif = choose(0.03,-0.03,0);
glowSize += dif;
glowSize = clamp(glowSize,0.9,1.1);

lifeTime -= 1;
if lifeTime <= 0 {
    instance_destroy();
    }

