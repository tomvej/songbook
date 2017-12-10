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
	\repeat volta 2 {
		<< { a,1 } \\ { a,8 e8 c'8-> a8 e8 b8-> a8 e8 } >>
		<< { a,1 } \\ { c'8-> a8 e8 d'8-> a8 e8 c'8-> e8 } >>
		<< { e,1 } \\ { e,8 e8 g8 b8~ b2 } >>
		<< { e,1 } \\ { e,8 e8 g8 b8~ b2 } >>
	}
}

{
	\clef "G_8"
	<< { a,1 } \\ { a,8 e8 c'8-> a8 e8 b8-> a8 e8 } >>
	<< { a,1 } \\ { c'8-> a8 e8 b8-> a8 e8 c'8-> e8 } >>
	<< { a,1 } \\ { c'8-> a8 e8 d'8-> a8 e8 e'8-> c'8 } >>
	<< { e,1 } \\ { b8-> g8 e8 e'8-> g8 e8 b8-> e8 } >>
	<< { a,1 } \\ { a,8 e8 c'8-> a8 e8 b8-> a8 e8 } >>
	<< { a,1 } \\ { c'8-> a8 e8 d'8-> a8 e8 e'8-> c'8 } >>
	<< { c1 } \\ { c8 e8 e'8-> g8 e8 d'8-> g8 e8 } >>
	<< { c1 } \\ { c'8-> g8 e8 b8-> g8 e8 c'8-> g8 } >>
	<< { e,1 } \\ { e,8 e8 g8 b8-> e8 g8 e'8-> b8 } >>
	<< { a,1 } \\ { a,8 e8 a8 c'8-> e8 a8 e'8-> c'8 } >>
	<< { f1 } \\ { f8 a8 c'8 g'8-> a8 c'8 f'8-> a8} >>
	<< { g,4. e,2 } \\ { g'8-> b8 g8 e'8-> d'8 gis8 e'8 d'8 } >>
	<< { d1 } \\ { d8 a8 d'8 f'8-> d'8 a8 d'8-> a8} >>
	<< { a,1 } \\ { a,8 e8 a8 c'8-> a8 e8 e'8-> c'8 } >>
	<e, b>4 r2.
	<< { a,1 } \\ { a,8 e8 c'8-> a8 e8 b8-> a8 e8 } >>
	<< { e,1 } \\ { b8-> g8 e8 e'8-> g8 e8 b8-> g8 } >>
	<< { a,1 } \\ { a,8 e8 c'8-> a8 e8 b8-> a8 e8 } >>
	<< { e,1 } \\ { e,8 e8 g8 b8-> g8 e8 e'8-> b8 } >>
}
