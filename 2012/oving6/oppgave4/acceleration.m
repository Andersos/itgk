function [ax, ay] = acceleration(vx, vy)
	
	airresistance = 0.01;
	gravity = 9.81;

	ax = -airresistance*vx*abs(vx);
	ay = -airresistance*vy*abs(vy) - gravity;
end