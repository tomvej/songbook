\version "2.18.2"
\header {
	title = "Krajina po bitvě"
	author = "Jarek Nohavica"
}

\paper {
	#(set-paper-size "a5")
}

{
	\clef "G_8"
	<< { a,1 } \\ { a,8 e8 c'8-> a8 e8 b8-> a8 e8 } >>
	<< { a,1 } \\ { c'8-> a8 e8 d'8-> a8 e8 c'8-> e8 } >>
	<< { e,1 } \\ { e,8 e8 g8 b8~ b2 } >>
	<< { e,1 } \\ { e,8 e8 g8 b8~ b2 } >>
}

{
	\clef "G_8"
	a,4 c'4. b4. c'4. b4. c'4
	c'4. d'4. e'4 b4. e'4. b4
	a,4 c'4. b4. c'4. d'4. e'4
	c4 e'4. d'4. c'4. b4. c'4
	e,4 b4. e'4. a,4 c'4. e'4.

	f4 g'4. f'4.

	d4 f'4. d'4. a,4 c'4. e'4.
	<e, b>2 r2

	a,4 c'4. b4. b4. e'4. b4
	a,4 c'4. b4. e,4. b4. e'4
}
