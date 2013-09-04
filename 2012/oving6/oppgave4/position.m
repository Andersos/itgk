function [x1, y1] = position(x0, y0, vx, vy, delta)
	x1 = x0 + vx * delta;
	y1 = y0 + vy * delta;
end