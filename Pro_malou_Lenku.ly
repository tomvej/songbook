\version "2.18.2"
\header {
	title = "Pro malou Lenku"
	composer = "Jarek Nohavica"
}

\paper {
	#(set-paper-size "a5")
}

{
	\clef "G_8"
	\key g \major
	<< { a,1 } \\ { a,8 e8 g8 c'8 g'8 c'8 g8 e8 } >>
	<< { d1 } \\ { fis'8 d'8 a8 g'8(fis'8) d'8 a8 d8 } >>
	<< { g,2 fis,2 } \\ { g,8 d8 g8 b8 fis,8 d8 g8 b8} >>
	<< { e,1 } \\ { e,8 e8 g8 b8 g'8 b8 g8 e8 } >>
	<< { a,1 } \\ { a,8 e8 g8 c'8 g'8 c'8 g8 e8 } >>
	<< { d1 } \\ { fis'8 d'8 a8 g'8(fis'8) d'8 a8 d8 } >>
	<< { g,1~ } \\ { g,8 d8 g8 b8 g8 d8 c'8 g8 } >>
	<< { g,1 } \\ { d'8 g8 d8 \tuplet 3/2 {b8( c' b)} g8 g'8 g8} >>
}
