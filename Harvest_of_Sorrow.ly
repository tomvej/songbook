\version "2.18.2"
\header {
	title = "Harvest of Sorrow"
	composer = "Blind Guardian"
}

%% source http://www.songsterr.com/a/wsa/blind-guardian-harvest-of-sorrow-tab-s27050t0

%% strophe start
mainStart = {
	\set Staff.beatStructure = #'(4 2)
	\set TabStaff.minimumFret = #7

	<< {e2.} \\ { g'8 d'8 b8 d'8 g'8( a'8) } >>
	<< {b,2.} \\ { fis'8 d'8 b8 d'8 fis'8( g'8)} >>
	<< {e2.} \\ { e8 b8 d'8 b8 fis'8( g'8) } >>
	\acciaccatura{fis'16 g'} fis'8 d'8 b8 e8 a'8( g'8)
}

%% normal strophe end
mainEnd = {
	\set Staff.beatStructure = #'(4 2)
	\set TabStaff.minimumFret = #7

	<< {e2.} \\ { g'8 d'8 b8 d'8 g'8( a'8) } >>
	<< {b,2.} \\ { b'8 d'8 b8 d'8 b'8 a'8 } >>
	<< {e2.} \\ { g'4 b8 e8 fis'8( g'8)} >>
	e'2.
}

% variant strophe end (played after "At the dawn of our living time ..."
mainEndVar = {
	\set Staff.beatStructure = #'(4 2)
	\set TabStaff.minimumFret = #7

	<< {e2.} \\ { g'8 d'8 b8 d'8 g'8( a'8) } >>
	<< {b,2.} \\ { b'8 d'8 <a' b>8 d'8 fis'8( g'8) } >>
	<< {e2.} \\ { g'4 b8 e'8 fis'8( g'8) } >>
	<e' fis'>8( g'8) e'4 b4
}

% prelude start
preludeStart = {
	\set Staff.beatStructure = #'(4 2)
	\set TabStaff.minimumFret = #7

	<< {e2.} \\ { g'8 d'8 b8 d'8 g'8( a'8) } >>
	<< {b,2.} \\ { fis'8 d'8 b8 d'8 fis'8( g'8)} >>
	<< {e2.} \\ { b'8 a'8 g'8 fis'8 fis'8 d'8 } >>
	b4 b8 e8 a'8( g'8)
}

prelude = {\preludeStart \mainEnd}

main = {\mainStart \mainEnd}

dawn = {
	\set TabStaff.minimumFret = #0
	\set Staff.beatStructure = #'(4 2)
	c8 g8 e8 g8 <g c'>8( d'8)

	\set Staff.beatStructure = #'(3 3)
	<c' e'>8( f'8 e'8) <g d'>8 <c' e'>8 <g c'>8

	\set Staff.beatStructure = #'(6)
	b,8 fis8 g8 b8 g8 a,8
	b,8 fis8 g8 b8 g8 fis8

	\set Staff.beatStructure = #'(4 2)
	c8 g8 e8 g8 <g c'>8( d'8)

	\set Staff.beatStructure = #'(3 3)
	<c' e'>8( f'8 e'8) <g d'>8 <c' e'>8 <g c'>8

	\set Staff.beatStructure = #'(6)
	b,8 fis8 g8 b8 g8 fis8
	\set Staff.beatStructure = #'(2 2 2)
	c8 g8 e8 g8 d8\5 d8

	\repeat volta 2 {
		\set Staff.beatStructure = #'(6)
		e,8 e8 g8 b8 g8 e8
		c8 e8 g8 c'8 g8 e8
		e,8 e8 g8 b8 g8 e8

		\set Staff.beatStructure = #'(3 3)
		c8 e8 g8 b,8 d8 g8
	}
}

mainVar = {\mainStart \mainEndVar}

%% the structure of the song is as follow
% prelude + main (as prelude)
% 2x main
% dawn
% 2x mainVar

symbols = {
	\set Staff.beamExceptions = #'()
	\set TabStaff.restrainOpenStrings = ##t

	\time 6/8
	\prelude
	\repeat volta 3 \main
	\dawn
	\repeat volta 2 \mainVar

	%% here I got right before refrain
}


\score {
	<<
		\new Staff {\clef "G_8"	\key e \minor \symbols}
		\new TabStaff { \symbols }
	>>
}
