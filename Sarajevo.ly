\version "2.18.2"
\header {
	title = "Sarajevo"
	composer = "Jarek Nohavica"
}

\paper {
	#(set-paper-size "a5")
}


{
	\clef "G_8"
	\key e \minor
	<< { e,1 } \\ { e,8 e8 g8 e'8 b4 g4 } >>
	<< { a,1 } \\ { a,8 e8 a8 e'8 c'2 } >>
	<< { fis,1 } \\ { fis,8 d8 a8 fis'8 c'4 a4 } >>
	<< { g,2 b,2 } \\ { g,8 d8 g8 d'8 b,8 fis8 a8 dis'8 } >>
	<< { e,1 } \\ { e,8 e8 g8 e'8 b4 g4 } >>
	<< { a,1 } \\ { a,8 e8 a8 e'8 c'2 } >>
	<< { b,1 } \\ { b,8 fis8 a8 fis'8 dis'4 a4 } >>
	<< { e,1 } \\ { e,8 e8 g8 e'8 b2 } >>
	<< { e,1 } \\ { e,8 e8 g8 e'8 b2 } >>
}

{
	\clef "G_8"
	\key e \minor
	\repeat volta 2 {
		<< { e,1 } \\ { e,8 e8 g8 e'8 b4 g4 } >>
		<< { fis,1 } \\ { fis,8 e8 a8 e'8 c'2 } >>
		<< { b,1 } \\ { b,8 fis8 a8 fis'8 dis'4 a4 } >>
		<< { e,1 } \\ { e,8 e8 g8 e'8 b2 } >>
	}
}
