\version "2.18.2"
\header {
	title = "Zítra ráno v pět"
	composer = "Jarek Nohavica"
}

\paper {
	#(set-paper-size "a5")
}

{
	\clef "G_8"
	\key e \minor
	<< { e,1 } \\ { e,8 e8 g8 b8 e'8 b8 g8 e8 } >>
	<< { e,1 } \\ { e,8 e8 g8 b8 e'2 } >>
	<< { e,2 e,2 } \\ { <g' e'>8 <fis' d'>8 <g' e'>8 <fis' d'>8 e'8 b8 g8 b8 } >>
	<< { d2 d2 } \\ { <b' g'>8 <a' fis'>8 <b' g'>8 <c'' a'>8 <d'' b'>8 g'8 <d'' b'>8 g'8 } >>
	<< { c2 a,4 fis,4 } \\ { <e' c'>8 <d' g>8 <c' g>8 <b g>8 a,8 d8 fis,8 d8} >>
	<< { g,2 e,2 } \\ { g,8 g8 <b g'>8 g8 e,8 gis8 <d' e'>8 gis8 } >>
	<< { a,4 d4 d2 } \\ { a'8 c'8 g'8 a'8 fis'8 d'8 a8 d'8 } >>
	<< { g,4 fis,4 e,2 } \\ { b8 g8 b8 g8 b8 g8 e8 g8 } >>
	<< { a,2 b,2 } \\ { <a' e'>8 <g' b>8 <a' e'>8 <g' b>8 b,8 fis8 <a dis'>8 fis8 } >>
	<< { e,1} \\ { e,8 e8 <g b>8 e8 <g d'>8 e8 <e' b>8 e8 } >>
	<< { a,4 d4 d2 } \\ { a'8 c'8 g'8 a'8 fis'8 d'8 a8 d'8 } >>
	<< { g,4 fis,4 e,2} \\ { g'8 b8 g'8 b8 e'8 b8 g8 b8 } >>
	<< { a,2 b,2 } \\ { <a' e'>8 <g' b>8 <a' e'>8 <g' b>8 b,8 fis8 <a dis'>8 fis8 } >>
	<< { e,1 } \\ { e,8 e8 g8 b8 e'2 } >>
}
