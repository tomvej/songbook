\version "2.18.2"
\header {
	title = "Darmoděj"
	composer = "Jarek Nohavica"
}

\paper {
	#(set-paper-size "a5")
}


{
	\clef "G_8"
	\time 6/8
	\set Timing.beatStructure = #'(2 2 2)

	<< { a,2. } \\ { \arpeggioArrowUp <a, c' e' a' c''> 4\arpeggio e'8 a'8 c''8 a'8 } >>
	<< { e,2. } \\ { b'8( c''8) b'8( a'8) a'4 } >>
	<< { d2 } \\ { g'8 c'8 f'8 c'8 d'8 g8 } >>
	<< { e2. } \\ { e8 g8 \acciaccatura {e'16 f'16} <c' e'>8 g8 <c' e'>4 } >>
	ais,8 <f d'>8 <f' d''>8 <e' c''>8 <d' ais'>4
	<< { a,2. } \\ {a,8 <c' a'>8 <c' a'>8 <c' a'>8 <c' a'> 4 } >>
	<< { ais,4 e2 } \\ { ais,8 <f d'> 8 e8 <b d' gis'>8 <b d' gis'>4 } >>
	<a, c' e' a'>2.\arpeggio


}

{
	\clef "G_8"
	\time 6/8
	\set Timing.beatStructure = #'(6)
	
	\repeat volta 2 {
		<< { a,2. } \\ { a,8 c'8 <e' a'>8 c'8 <e' a'>8 c'8}>>
		<< { e,2. } \\ { e,8 e'8 <g' b'>8 e'8 <g' b'>8 e'8} >>
		<< { a,2. } \\ { c''4 c'8 e'8 a'8 e'8 } >>
	}
	\alternative {
		{ << { e,2. } \\ { b'8 g'8 e'8 g'8 b'8 g'8 } >> }
		{ << { e,2. } \\ { b'8 g'8 e'4 d'4 } >> }
	}

	<< { c2.} \\ { c8 g8 <c' g'>8 g8 <c' g'>8 g8} >>
	<< { g,2. } \\ { g,8 g8 <d' g'>8 g8 <d' g'>8 g8 } >>
	<< { a,2. } \\ { a,8 a8 <c' e'>8 a8 <c' e'>8 a8 } >>
	<< { e,2. } \\ { e,8 g8 <b e'>8 g8 <b e'>8 g8 } >>
	<< { f2. } \\ { f8 a8 <c' f'>8 a8 <c' f'>8 a8 } >>
	<< { dis2.} \\ { dis8 a8 <c' fis'>8 a8 <c' fis'>8 a8 } >>
	<< { e2 b,4 } \\ { e8 gis8 <b e'>8 gis8 b,8 gis8 } >>
	e,2.
	<< { a,2. } \\ { a,8 a8 <c' e'>8 a8 <c' f'>8 a8 } >>
}

{
	\clef "G_8"
	\time 6/8

	\repeat volta 2 {
		<< { a,2. } \\ { a,4 <a c' e'>4 <a c' e'>4 } >>
		<< { e,2. } \\ { e,4 <g b e'>4 <g b e'>4 } >>
		<< { c2. } \\ { c4 <g c' e'>4 <g c' e'>4 } >>
		<< { g,2. } \\ { g,4 <g b g'>4 <g b g'> 4 } >>
		<< { a,2. } \\ { a,4 <a c' e'>4 <a c' e'>4 } >>
		<< { f2. } \\ { f4 <a c' f'>4 <a c' f'> 4} >>
		<< { dis2.} \\ { dis4 <a c' fis'>4 <a c' fis'>4 } >>
	}
	\alternative {
		{ << { e2. } \\ { e4 <gis d' e'>4 <gis d' e'>4 } >> }
		{ << { e,2. } \\ { e,4 <gis d' e'>4 <gis d' e'>4 } >> }
	}

}
