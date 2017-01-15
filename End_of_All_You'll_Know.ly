\version "2.18.2"
\header {
	title = "End of All You'll Know"
	composer = "Yoko Kanno"
}

chordmusic = \chordmode {
	r2
	bes2:m
	f2:m/as
	ges2.:maj7
	ges4:maj9
	d1:m
	d1:m7+/cis
	f1/c
	e2.:m
	es4
	as2:m
	es2:m/ges
	e1:maj7
	c1:m
	c1:m7+/b
	es1/bes
	d2.:m
	des4~ des2.
	b4
	bes1:m
	a1
	gis1:m
	g1
	fis1:m
	f2:7.13-
	f2:7
	bes2:m
	bes2:m7/as
	ges2.:maj7
	ges4:maj9
	d1:m
	d1:m7+/cis
	f1/c
	e2.:m
	es4~ es4
	d2.
	g1/d
	d:sus4
	\powerChords g:1.5
	g:m
}

<<
\new ChordNames {
	\chordmusic
}
{
	\chordmusic
}
>>
