function [xv, yv] = trajectory(angle, startspeed, height)

	delta = 0.01;

	x = 0;
	y = height;
	i = 1;
	[vx, vy] = initialSpeed(angle, startspeed);

	while y > 0

		[ax, ay] = acceleration(vx, vy);
		
		[vx, vy] = speed(ax, ay, vx, vy, delta);
		
		[x, y] = position(x, y, vx, vy, delta);
		
		xv(i) = x;
		yv(i) = y;
		i = i + 1;
	end
end