\version "2.18.2"
\header {
	title = "Přítel"
	author = "Jarek Nohavica"
}

\paper {
	#(set-paper-size "a5")
}

{
	\clef "G_8"
	\key g \major
	<< { g,1 } \\ { g,8 d8 g8 b8 d8 g8 b8 d8} >>
	<< { fis,1 } \\ { fis,8 d8 a8 d'8 d8 a8 d'8 d8 } >>
	<< { e,1 } \\ { d'8 g8 e8 c'8 g8 e8 g'8 e8 } >>
	<< { d1 } \\ { g'8 d'8 a8 \tuplet 3/2 {fis'8( g'8 fis'8)} d'8 a8 d8 } >>
	<< { a,1 } \\ { a,8 e8 a8 \tuplet 3/2 {b8(c'8 b8)} a8 e'8 a8 } >>
	<< { c1 } \\ { c8 e8 g8 c'8 e8 g8 d'8 g8 } >>
	<< { g,1 } \\ { g,8 d8 g8 b8 g8 d8 g'8 b8} >>
	<< { fis,1 } \\ { fis,8 d8 a8 d'8~ d'2 } >>
}

{
	\clef "G_8"
	\key g \major
	\repeat volta 2 {
		<< { g,1 } \\ { g,8 d8 g8 b8 d8 g8 b8 d8} >>
		<< { fis,1 } \\ { fis,8 d8 a8 d'8 a8 d8 e'8 d'8 } >>
		<< { e,1 } \\ { d'8 g8 e8 c'8 g8 e8 g'8 e8 } >>
		<< { d1 } \\ { g'8 d'8 a8 \tuplet 3/2 {fis'8( g'8 fis'8)} d'8 a8 d8 } >>
		<< { a,1 } \\ { a,8 e8 a8 \tuplet 3/2 {b8(c'8 b8)} a8 e'8 c'8 } >>
		<< { c1 } \\ { c8 e8 g8 c'8 e8 g8 d'8 g8 } >>
		<< { g,1 } \\ { g,8 d8 g8 b8 g8 d8 g'8 b8} >>
	}
	\alternative {
		{ << { fis,1 } \\ { fis,8 d8 a8 d'8 d8 a8 d'8 d8 } >> }
		{ << { fis,1 } \\ { fis,8 d8 a8 d'8~ d'2 } >> }
	}
}
