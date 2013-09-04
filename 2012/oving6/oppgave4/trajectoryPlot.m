function trajectoryPlot(angle, startspeed, height)
	
	[x, y] = trajectory(angle, startspeed, height);
	plot(x, y);
end
