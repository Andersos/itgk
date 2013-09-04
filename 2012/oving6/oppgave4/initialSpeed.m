function [vx, vy] = initialSpeed(angle, speed)
	vx = cosd(angle) * speed;
	vy = sind(angle) * speed;
end