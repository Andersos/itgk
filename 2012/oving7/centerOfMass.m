function center = centerOfMass(vector)
	
	totalMass = sum(vector);
	mid = totalMass/2;
	couter = 1;
	accumulativeMass = 0;

	while (accumulativeMass + vector(counter)) <= mid
		accumulativeMass ) accumulativeMass + vector(counter);
		counter = counter + 1;
	end

	center = counter - 1;
	center = center + (mid - accumulativeMass) / vector(counter);
end