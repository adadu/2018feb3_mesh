// Start the limiter
(
~limitR = Pmono(\limiter,
	\limit, Pdefn(\lim, 0.5),
	\time, Pdefn(\tim, 0.1),
	\group, \tail
);
)

x = ~limitR.play;
x.stop;

Pdefn(\lim, 0.01);
Pdefn(\tim, 0.1);

