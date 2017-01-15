\version "2.18.2"
\header {
	title = "Mikymauz"
	author = "Jarek Nohavica"
}

\paper {
	#(set-paper-size "a5")
}

{
	\clef "G_8"
	<< { a,1 } \\ { a,8 c'8( b8) a8 e'8 a8 g'8 d'8} >>
	<< { g,2 e,2 } \\ { g,8 d'8 e'8 f'8 e'8 b8 d'8 c'8 } >>
	<< { f2 e,2 } \\ { f8 \appoggiatura d'16 c'8( b8) a8 gis8( a8) b8 e'8 } >>
	<< { f2 e,2 } \\ { f8 \appoggiatura d'16 c'8( b8) a8 gis8( a8) b8 gis8 } >>
	<< { a,1 } \\ { a,8 e8 b8 a8 e'2} >>
}

{
	\clef "G_8"
	\repeat volta 2 {
		<< { a,1 } \\ { a,8 c'8( b8) a8 e'8 a8 g'8 d'8} >>
		<< { g,2 e,2 } \\ { g,8 d'8 e'8 f'8 e'8 b8 d'8 c'8 } >>
		<< { f2 e,2 } \\ { f8 \appoggiatura d'16 c'8( b8) a8 gis8( a8) b8 e'8 } >>
	}
	\alternative {
		{ << { f2 e,2 } \\ { f8 \appoggiatura d'16 c'8( b8) a8 gis8 e8 f8 e8 } >> }
		{ << { f2 e,2 } \\ { f8 \appoggiatura d'16 c'8( b8) a8 gis8( a8) b8 gis8 } >>  << { a,1 } \\ { a,8 e8 b8 a8 e'4 e4} >> }
	}

}
