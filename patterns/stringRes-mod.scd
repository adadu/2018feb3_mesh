// PMONO to control click w/o ID
(
~srM1 = Pmono(\stringRes,
	\out, Pdefn(\srM1out, Prand([0, 1, 2, 3], inf)),
    \startfreq, Pdefn(\srM1startfreq, 400),
    \endfreq, Pdefn(\srM1endfreq, 410),
	\len, Pdefn(\srM1len, 20),
	\dur, Pdefn(\srM1dur, Pdefn(\srM1len * 1.1)),
    \gate, Pdefn(\srM1t_gate, 1),
    \res, Pdefn(\srM1res, 0.99),
    \att, Pdefn(\srM1att, 0.99),
    \dec, Pdefn(\srM1dec, 0.69),
    \sus, Pdefn(\srM1sus, 0.90),
    \attime, Pdefn(\srM1attime, 0.7),
    \dectime, Pdefn(\srM1dectime, 0.2),
    \sustime, Pdefn(\srM1sustime, 0.5),
	\reltime, Pdefn(\srM1reltime, 0.2),
	\amp, Pdefn(\srM1amp, 0.01)
);
)

c = ~srM1.play;
c.stop;

// PMONO mods
(
// slow rises rando calrissian style part 1
Pdefn(\srM1out, Prand([0,1], inf));

Pdefn(\srM1dur, Pdefn(\srM1len) * 1.5);
Pdefn(\srM1len, Pexprand(2.54, 13.77, inf) * 0.1);

Pdefn(\srM1t_gate, 1);

Pdefn(\srM1startfreq, Pexprand(100, 200, inf));
Pdefn(\srM1endfreq, Pexprand(10, 20, inf) * Prand([1,10],inf));

Pdefn(\srM1res, Pexprand(0.945, 0.999, inf));

Pdefn(\srM1att, 0.9);
Pdefn(\srM1dec, 0.7);
Pdefn(\srM1sus, 0.9);

// a d s r times are 0-1 values X len
Pdefn(\srM1attime, 0.001);
Pdefn(\srM1dectime, 0.2);
Pdefn(\srM1sustime, 0.5);
Pdefn(\srM1reltime, 0.2);

Pdefn(\srM1amp, Pexprand(0.01, 0.05, inf));
)


(
// slow rises rando calrissian style part 1
Pdefn(\srM1out, Prand([0,1], inf));

Pdefn(\srM1dur, Pdefn(\srM1len) * 1.05);
Pdefn(\srM1len, Pexprand(2.54, 13.77, inf) * 1);

Pdefn(\srM1t_gate, 1);

Pdefn(\srM1startfreq, Pexprand(100, 200, inf));
Pdefn(\srM1endfreq, Pexprand(10, 20, inf) * Prand([1,10],inf));

Pdefn(\srM1res, Pexprand(0.945, 0.999, inf));

Pdefn(\srM1att, 1);
Pdefn(\srM1dec, 0.7);
Pdefn(\srM1sus, 0.9);

Pdefn(\srM1attime, Pexprand(0.01, 0.5), inf);
Pdefn(\srM1dectime, 0.3);
Pdefn(\srM1sustime, 0.1);
Pdefn(\srM1reltime, 1 - (Pdefn(\srM1attime) * 0.5));

Pdefn(\srM1amp, Pexprand(0.01, 0.05, inf));
)

(
//tweak rain drops - move to pbind
Pdefn(\srM1out, Prand([0,1], inf));

Pdefn(\srM1dur, Pdefn(\srM1len) * 1.2);
Pdefn(\srM1len, Pexprand(0.1, 0.711, inf) * 1);

Pdefn(\srM1t_gate, 1);

Pdefn(\srM1startfreq, Pexprand(50, 60, inf));
Pdefn(\srM1endfreq, Pexprand(100, 110, inf));

Pdefn(\srM1res, Pexprand(0.955, 0.999, inf));

Pdefn(\srM1att, 1);
Pdefn(\srM1dec, 0.7);
Pdefn(\srM1sus, 0.05);

Pdefn(\srM1attime, Pexprand(0.001, (Pdefn(\srM1len) * 0.5), inf));
Pdefn(\srM1dectime, 0.3);
Pdefn(\srM1sustime, 1);
Pdefn(\srM1reltime, Pdefn(\srM1len) - Pdefn(\srM1attime) * 0.2);

Pdefn(\srM1amp, 0.1);
)


(
// var durs w multiplier
~mult = 0.333;
~same = Pseq((1..4) * 0.10, inf) * ~mult; //Pshuf([0.1, 0.2, 0.3, 0.4, 0.5], inf, 4) * ~mult;
~fbone = Pshuf([1,1,1,1,1,\rest,\rest],inf);
Pdefn(\srM1t_gate, 1);
Pdefn(\srM1out, Pshuf([ [0,0], [0,1], [0,2], [0,3] ], inf)); //Prand((0..3), inf));
Pdefn(\srM1len, ~same); //Pexprand(0.05, 2, inf));
Pdefn(\srM1dur, Pdefn(\srM1len) * 1.5); //Pexprand(0.1, 0.5, inf));
Pdefn(\srM1res, Pexprand(0.95, 0.99, inf));
Pdefn(\srM1startfreq, Pseq((314..500).mirror1, inf, 7) * ~fbone); //Pexprand(1, 400, inf));
Pdefn(\srM1endfreq, Pseq((500..314).mirror1, inf, 5) * ~fbone); //Pexprand(400, 1, inf));

Pdefn(\srM1att, 1);
Pdefn(\srM1dec, 0.7);
Pdefn(\srM1sus, 0.9);

Pdefn(\srM1attime, Pexprand(0.001, (Pdefn(\srM1len) * 0.100), inf));
Pdefn(\srM1dectime, 0.2);
Pdefn(\srM1sustime, 0.7);
Pdefn(\srM1reltime, Pdefn(\srM1len) - (Pdefn(\srM1attime) * 0.1));

Pdefn(\srM1amp, Pexprand(0.01, 0.05, inf));
)

// PBIND to control running Pmono w/ Pbind
// query nodes, assign clkB1nodeID to appropriate node
s.queryAllNodes;
~srB1nodeID = 201327592;

(
~srB1 = Pbind(
	\instrument, \stringRes,
	\id, ~srB1nodeID,
	\type, \set,
	\args, #[],
	\out, Pdefn(\srB1out, Prand([ 0, 1, 2, 3 ], inf)),

	\dur, Pdefn(\srB1dur, 40, inf),
    \len, Pdefn(\srB1len, 40, inf),

	\t_gate, Pdefn(\srB1t_gate, 1, inf),

	\startfreq, Pdefn(\srB1startfreq, 40, inf),
	\endfreq, Pdefn(\srB1endfreq, 40, inf),

    \res, Pdefn(\srB1res, 0.99, inf),

	\att, Pdefn(\srB1att, 1, inf),
	\dec, Pdefn(\srB1dec, 1, inf),
	\sus, Pdefn(\srB1sus, 1, inf),

	\attime, Pdefn(\srB1attime, 1, inf),
	\dectime, Pdefn(\srB1dectime, 1, inf),
	\sustime, Pdefn(\srB1sustime, 1, inf),
    \reltime, Pdefn(\srB1reltime, 0.4, inf),

	\amp, Pdefn(\srB1amp, 0.01, inf),
);
)

d = ~srB1.play;
d.stop;

// PBIND mods
Pdefn(\srB1out, Prand([ 0, 1, 2, 3 ], inf));

Pdefn(\srB1dur, Pexprand(0.1, 0.51, inf));
Pdefn(\srB1len, Pexprand(5, 8, inf));

Pdefn(\srB1t_gate, 1);

Pdefn(\srB1res, Pexprand(0.741, 0.999, inf));

Pdefn(\srB1startfreq, Pexprand(80, 10, inf));
Pdefn(\srB1endfreq, Pexprand(81, 170, inf));

Pdefn(\srB1att, 1);
Pdefn(\srB1dec, 1);
Pdefn(\srB1sus, 1);

Pdefn(\srB1attime, 0.5);
Pdefn(\srB1dectime, 0.2);
Pdefn(\srB1sustime, 1);
Pdefn(\srB1reltime, 0.001);

Pdefn(\srB1amp, 0.1, inf);


// BUNK node? query nodes, find synth, kill it
s.queryAllNodes;
s.sendMsg("/n_free", 67109873);
s.sendMsg("/n_free", ~srB1nodeID);
