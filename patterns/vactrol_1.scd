MeshMono.makeTemplate(\vactrol, "_mono", "_bind");

~vactrolSynth = Synth(\vactrol);

(
~vactrol_mono = Pmono(\vactrol,
\len, Pdefn(\vactrollen_mono, nil),
\amp, Pdefn(\vactrolamp_mono, nil),
\res, Pdefn(\vactrolres_mono, nil),
\pulseFreq, Pdefn(\vactrolpulseFreq_mono, nil),
\attack, Pdefn(\vactrolattack_mono, nil),
\gate, Pdefn(\vactrolt_gate_mono, nil),
\panY, Pdefn(\vactrolpanY_mono, nil),
\in, Pdefn(\vactrolin_mono, nil),
\out, Pdefn(\vactrolout_mono, nil),
\pulseWidth, Pdefn(\vactrolpulseWidth_mono, nil),
\source, Pdefn(\vactrolsource_mono, nil),
\panX, Pdefn(\vactrolpanX_mono, nil),
\strength, Pdefn(\vactrolstrength_mono, nil)
).play;
)

~vactrol_mono.stop;

s.queryAllNodes;

~vactrol_bindID = 1014;


(
~vactrol_bind = Pbind(
\instrument, \vactrol,
\id, ~vactrol_bindID,
\type, \set,
\args, #[],
\len, Pdefn(\vactrollen_bind),
\amp, Pdefn(\vactrolamp_bind),
\res, Pdefn(\vactrolres_bind),
\pulseFreq, Pdefn(\vactrolpulseFreq_bind),
\attack, Pdefn(\vactrolattack_bind),
\gate, Pdefn(\vactrolt_gate_bind),
\panY, Pdefn(\vactrolpanY_bind),
\in, Pdefn(\vactrolin_bind),
\out, Pdefn(\vactrolout_bind),
\pulseWidth, Pdefn(\vactrolpulseWidth_bind),
\source, Pdefn(\vactrolsource_bind),
\panX, Pdefn(\vactrolpanX_bind),
\strength, Pdefn(\vactrolstrength_bind),
\dur, Pdefn(\vactroldur_bind)
).play;
)

~vactrol_bind.isPlaying;
~vactrol_bind.stop;
~vactrol_bind.reset.play;

Pdefn(\vactrollen_bind, Pn(Pexprand(0.125, 5), inf));
Pdefn(\vactrolamp_bind, Pn(0.15));
Pdefn(\vactrolres_bind, Pn(2.8));
Pdefn(\vactrolpulseFreq_bind, Pn(Pexprand(5, 50, inf)));
Pdefn(\vactrolattack_bind, Pn(0.5));
Pdefn(\vactrolt_gate_bind, Pn(1));
Pdefn(\vactrolpanY_bind, Pn(0));
Pdefn(\vactrolin_bind, Pn(20));
Pdefn(\vactrolout_bind, Pn(0));
Pdefn(\vactrolpulseWidth_bind, Pn(Pseries(0.01, 0.001, 100)));
Pdefn(\vactrolsource_bind, Pn(1));
Pdefn(\vactrolpanX_bind, Pn(Pbrown(-1, 1, 0.125)));
Pdefn(\vactrolstrength_bind, Pexprand(0.2, 10), inf);
Pdefn(\vactroldur_bind, Pn(Prand([Rest(2),Pexprand(0.125, 5)], inf), inf));

//Some Ideas: split Pbinds into 2. 1 for timbre and 1 for rythm/spatial.

s.sendMsg("/n_free",~vactrol_bindID);
~vactrolSynth.free;