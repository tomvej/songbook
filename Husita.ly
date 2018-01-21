\version "2.18.2"
\header {
	title = "Husita"
	author = "Jarek Nohavica"
}

\paper {
	#(set-paper-size "a5")
}

{

	\clef "G_8"
	\time 6/8
	\set Timing.beatStructure = #'(2 2 2)

	\repeat volta 2 {
		<< { c2. } \\ { c'8 g8 d'8 g8 e'8 c'8 } >>
		<< { g,2. } \\ { g'8 g8 g'8 f'8 e'8 b8 } >>
	}

	\alternative {
		{
			<< { c2. } \\ { e'8 g8 g'8 g8 e'8 g8 } >>
			<< { g,2. } \\ { d'8 g8 d'8 b8 g8 d8} >>
		}
		{
			<< { c4 g,2 } \\ { c'8 g8 d'8 g8 d8 b8 } >>
			<< { c2. } \\ { c'8 g8 e8 e'8 c'8 g8 } >>
		}
	}
}

{
	\clef "G_8"
	\time 6/8
	\set Timing.beatStructure = #'(2 2 2)

	\repeat volta 2 {

		\repeat volta 2 {
			<< { c2. } \\ { c'8 g8 d'8 g8 e'8 c'8 } >>
			<< { g,2. } \\ { g'8 g8 g'8 f'8 e'8 b8 } >>
			<< { c2. } \\ { e'8 g8 g'8 g8 e'8 g8 } >>
			<< { g,2. } \\ { d'8 g8 d'8 b8 g8 d8} >>
		}

		<< { a,2 g,4 } \\ { c'8 a8 e8 a8 b8 g8 } >>
		<< { c2 f4 } \\ { c'8 g8 e8 g8 c'8 a8 } >>
		<< { c2 g,4 } \\ { c'8 g8 e8 g8 b8 g8 } >>
		<< { a,4 f2 } \\ { c'8 g8 c'8 a8 c'8 f'8 } >>
		<< { c2 g,4} \\ { <c' e'>8 g8 e8 g8 b8 g8 } >>

	}

	\alternative {
		{
			<< { c2. } \\ { c'8 g8 d'8 g8 e'8 c'8 } >>
			<< { g,2. } \\ { g'8 g8 g'8 f'8 e'8 b8 } >>
			<< { c4 g,2 } \\ { c'8 g8 d'8 g8 d8 b8 } >>
			<< { c2. } \\ { c'8 g8 e8 e'8 c'8 g8 } >>
		}
		{
			<< { c4 r8 g,8 a,8 b,8 } \\ { c'4 } >>  
		}
	}

	\repeat volta 2 {
		<< { c2 g,4 } \\ { c'8 g8 e'8 g8 b8 g8 } >>
		<< { c2. } \\ { c'8 g8 e8 \tuplet 3/2 { c'8(d'8 c'8) } e8 } >>
		<< { a,4 d4 g,4 } \\ { c'8 a8 f'8 a8 b8 g8 } >>
	}

	\alternative {
		{ << { c2 g,4 } \\ { c'8 g8 e'8 g8 b8 g8 } >> }
		{ << { c2. } \\ { c'8 g8 e8 \tuplet 3/2 { c'8(d'8 c'8) } e8 } >> }
	}

	<< { a,4 d4 g,4 } \\ { c'8 a8 f'8 a8 b8 g8 } >>
	<< { c2 a,4 } \\ { c'8 g8 e8 c'8 c'8 a8  } >>
	<< { d2 g,4 } \\ { f'8 d'8 a8 f'8  b8 g8 } >>
	<< { c2. } \\ { c'8 g8 d'8 g8 e'8 c'8 } >>
	<< { g,2. } \\ { g'8 g8 g'8 f'8 e'8 b8 } >>
	<< { c4 g,2 } \\ { c'8 g8 d'8 g8 d8 b8 } >>
	<< { c2. } \\ { c'8 g8 e8 \tuplet 3/2 { c'8(d'8 c'8) } e8 } >>
}
