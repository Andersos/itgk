function area = trapezoidMethod(start, stop, n, fn)
	delta = (stop-start)/n;
	area = 0;

	for i = start:delta:stop-delta
		area = area + trapezoidArea(fn(i),fn(i+delta),delta);
	end
end
