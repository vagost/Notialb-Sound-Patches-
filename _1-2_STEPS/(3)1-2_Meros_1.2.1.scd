//:	2.1 - Sta Grigora High-Freq ( Auto kai to apokato mazi 1-2 )
//=========================
//
	
Pdef(\y, Ppar([
		
	Pbind(
		\instrument, \Bota1_Meros_1,
		//All
		\dur, Pseq([1/3, 1/2, 1/3, 1/3, Pseq([1/6], 6), 1/6], 1),
		\harm, Pseq([1], inf),
		\ampB, Pseq([3, 3, 3, 3, Pseq([0, 3, 0, 3, 0, 3]*6, 1), 3]/2, inf), //Sta grigora ampB [3] 
		\freq, Pseq([~f_2, ~f_2, ~f_2, ~f_2, ~f_8, ~f_8, ~f_8, ~f_8, ~f_8, ~f_8, ~f_2], inf),
		//Bota Envelope
		\at, Pseq([0.01, 0.01, 0.01, 0.01, Pseq([0.01], 6), 0.01], inf),
		\rel, Pseq([0.02, 0.02, 0.02, 0.02, Pseq([0.02], 6), 0.02], inf),
		\shape, Pseq([-4, -4, -4, -4, Pseq([20], 6), -4], inf)
		
	),

	Pbind(
		\instrument, \Noise_Meros_1,
		//All
		\dur, Pseq([1/3, 1/2, 1/3, 1/3, Pseq([1/6], 6), 1/6], 1),
		\ampN, Pseq([0.1, 0.1, 0.1, 0.1, Pseq([0], 6), 0]*1.2, inf), //def xoris *1.4
		\nMul, Pseq([1e40, 1e40, 1e40, 1e40, Pseq([0.001], 6), 1e40], inf),
		\nAdd, Pseq([1e40, 1e40, 1e40, 1e40, Pseq([1e4], 6), 1e40], inf),
		//Noise Envelope
		\at, Pseq([0.08, 0.08, 0.08, 0.08, 0.08, 0.08], inf), 
		\rel, Pseq([0.2, 0.2, 0.2, 0.2, 0.2, 0.2], inf),
		//\shape, Pseq([-200, -200, -200, -200, -200, -200], inf)
		\shape, Pseq([-200], inf)
	),

	
	Pbind(
		\instrument, \Drone_Glitch_Meros_1,
		//All
		\dur, Pseq([1/3, 1/2, 1/3, 1/3, Pseq([1/6], 6), 1/6], 1), //?
		\ampD, Pseq([1.5, 0, 0, 0, Pseq([0], 6), 0.3]*1.3, inf),  //def /2
		\ampG, Pseq([0], inf), 
		//\harm, Pseq([0.5], inf), 
		\harm, Pseq([0.5, 0.5, 0.5, 0.5, Pseq([0.5], 6), 20], inf), 
		\freq, Pseq([~fD2, ~fD2, ~fD2, ~fD2, Pseq([~fD2], 6), [~fD7, ~f_8]], inf),
		//Drone Envelope
		\at, Pseq([0.5, 0.08, 0.08, 0.08, Pseq([0.08], 6), 1/3], inf), 
		\rel, Pseq([1, 0.2, 0.2, 0.2, Pseq([0.2], 6), 1/12], inf),
		\shape, Pseq([4], inf)
		
	)
	

	
	], 1)
);	

	
Pdef(\y1, Ppar([
		
	Pbind(
		\instrument, \Bota1_Meros_1,
		//All
		\dur, Pseq([1/3, 1/2, 1/3, 1/3, Pseq([1/6], 6), 1/6], 1),
		\harm, Pseq([1], inf),
		\ampB, Pseq([3, 3, 3, 0, Pseq([3, 0, 0, 3, 3, 3]*6, 1), 3]/2, inf), //Sta grigora ampB [3] 
		\freq, Pseq([~f_2, ~f_2, ~f_2, ~f_2, ~f_8, ~f_8, ~f_8, ~f_8, ~f_8, ~f_8, ~f_2], inf),
		//Bota Envelope
		\at, Pseq([0.01, 0.01, 0.01, 0.01, Pseq([0.01], 6), 0.01], inf),
		\rel, Pseq([0.02, 0.02, 0.02, 0.02, Pseq([0.02], 6), 0.02], inf),
		\shape, Pseq([-4, -4, -4, -4, 20, 20, 20, 20, 20, 20, -4], inf)
		
	),

	Pbind(
		\instrument, \Noise_Meros_1,
		//All
		\dur, Pseq([1/3, 1/2, 1/3, 1/3, Pseq([1/6], 6), 1/6], 1),
		\ampN, Pseq([0.1, 0.1, 0.2, 0, Pseq([0], 6), 0]*1.2, inf), //def xoris *1.4
		\nMul, Pseq([1e40, 1e40, 1e4, 1e40, Pseq([0.001], 6), 1e40], inf),
		\nAdd, Pseq([1e40, 1e40, 1e4, 1e40, Pseq([1e4], 6), 1e40], inf),
		//Noise Envelope
		\at, Pseq([0.08, 0.08, 0.08, 0.08, 0.08, 0.08], inf), 
		\rel, Pseq([0.2, 0.2, 0.2, 0.2, 0.2, 0.2], inf),
		//\shape, Pseq([-200, -200, -200, -200, -200, -200], inf)
		\shape, Pseq([-200], inf)
	),

	
	Pbind(
		\instrument, \Drone_Glitch_Meros_1,
		//All
		\dur, Pseq([1/3, 1/2, 1/3, 1/3, Pseq([1/6], 6), 1/6], 1), //?
		\ampD, Pseq([1.5, 0, 0, 0, Pseq([0], 6), 0.3]*1.3, inf),  //def /2
		\ampG, Pseq([0], inf), 
		//\harm, Pseq([0.5], inf), 
		\harm, Pseq([0.5, 0.5, 0.5, 0.5, Pseq([0.5], 6), 20], inf), 
		\freq, Pseq([~fD2, ~fD2, ~fD2, ~fD2, Pseq([~fD2], 6), [~fD7, ~f_8]], inf),
		//Drone Envelope
		\at, Pseq([0.5, 0.08, 0.08, 0.08, Pseq([0.08], 6), 1/3], inf), 
		\rel, Pseq([1, 0.2, 0.2, 0.2, Pseq([0.2], 6), 1/12], inf),
		\shape, Pseq([4], inf)
		
	)
	

	
	], 1)
);	

//:
Pdef(\meros_1_2_1, 
	Pseq([
		
		Pdef(\y), Pdef(\y1)

], inf));

Pdef(\meros_1_2_1).quant = 0;
Pdef(\meros_1_2_1).play;

