SynthDef(\fmGrain, {|
    t_gate = 1,
	amp = 0,
	indexRate = 1,
	indexRangeLow = 1,
	indexRangeHi = 10,
	freq = 20,
	len = 0.2,
	carfreq = 440,
	modfreq = 200,
	panX = 0,
	panY=0|

	var env = EnvGen.kr(
		      Env([0, 0, 1, 0], [0, 1, 1], \sin, 1),
		      t_gate,
		      levelScale: amp,
		      doneAction: 0);
	var ndx = LFNoise1.kr(indexRate).range(indexRangeLow, indexRangeHi);
	var fmgr = FMGrain.ar(Impulse.ar(freq), len, carfreq, modfreq, ndx, env);
	Out.ar(0, Pan4.ar(fmgr, panX, panY, amp));

}, metadata:(
	\dur: Pexprand(0.01, 0.1),
	\t_gate: "1, inf",
	\amp: "1.2, inf",
	\indexRate: "10, inf",
	\indexRangeLow: "1, inf",
	\indexRangeHi: Pexprand(10, 100),
	\freq: "20, inf",
	\len: "0.2, inf",
	\carfreq: "440, inf",
	\modfreq: "2200-Pexprand(100, 1600)",
	\panX: Pbrown(-1, 1),
	\panY: Pbrown(-1, 1)
)
).add;

