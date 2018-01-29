// stringRes synth, Robert
SynthDef(\stringRes, {
	|out=0,
	startfreq=1,
	endfreq=20,
	len=1,
	t_gate=1,
	res=0.9,
	amp=0,
	att=0.2,
	dec=0.6,
	sus=1,
	attime=0.2,
	dectime=0.2,
	sustime=0.3,
	reltime=0.4|

	Out.ar(out,
		Streson.ar(
			WhiteNoise.ar,
			EnvGen.kr(
				Env([startfreq, startfreq, endfreq], [0, len], 'exp'),
				t_gate,
				doneAction: 0).reciprocal,
			res,
			amp
		) * EnvGen.ar(
			Env(
				[0, 0, att, dec, sus, 0],
				[0, attime, dectime, sustime, reltime].normalizeSum * len,
				'lin'), t_gate, doneAction: 0)
	)


}, metadata:(
	\dur: "40, inf",
	\out: Prand([0, 1, 2, 3], inf),
	\startfreq: "40, inf",
	\endfreq: "40, inf",
	\len: "40, inf",
	\t_gate: "1, inf",
	\res: "0.99, inf",
	\amp: "0.01, inf",
	\att: "1, inf",
	\dec: "1, inf",
	\sus: "1, inf",
	\attime: "1, inf",
	\dectime: "1, inf",
	\sustime: "1, inf",
	\reltime: "0.4, inf",
)).add;