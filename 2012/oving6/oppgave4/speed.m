function [vx1, vy1] = speed(vx0, vy0, ax, ay, delta)
	vx1 = vx0 + ax * delta;
	vy1 = vy0 + ay * delta;
end