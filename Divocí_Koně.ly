\version "2.16.2"
\header {
	title = "Divocí Koně"
	composer = "Jarek Nohavica"
}

\paper {
	#(set-paper-size "a5")
}

{
	\repeat volta 2 {
		<< {a1} \\ { a8 a'8 <c'' e''>8 a'8 <c'' f''>8 a'8 <c'' e''>8 a'8 } >> |
		<< {a2 a2} \\ { d''8 a'8 e''8 c''8 a'8 b'8 c''8 d''8 } >> |
		<< {c'2 d'2} \\ { c'8 g'8 <c'' e''>8 g'8 d'8 a'8 <d'' f''>8 a'8 } >> |
		<< {a1} \\ { a8 a'8 <c'' e''>8 a'8 <c'' f''>8 a'8 <c'' e''>8 a'8 } >> |
	}

	<< {d'2 a2 } \\ { d'8 a'8 <d'' f''>8 a'8 a8 a'8 <c'' e''>8 a'8 } >> |
	<< {d'2 a2 } \\ { d'8 a'8 <d'' f''>8 a'8 a8 a'8 <c'' e''>8 a'8 } >> |
	gis'8 d''8 f''8 b''8~ b''8 d''8 f''8 b''8 |
	<< { f'1 } \\ { f'8 c''8 f''8 c''8 g''8 c''8 a''8 c''8} >> |

	<< {d'2 a2 } \\ { d'8 a'8 <d'' f''>8 a'8 a8 a'8 <c'' e''>8 a'8 } >> |
	<< {d'2 a4 e'4 } \\ { d'8 a'8 <d'' f''>8 a'8 a8 <a' c'' e''>8 e'8 <gis' d'' e''>8 } >> |

	<< {a1} \\ { a8 a'8 <c'' e''>8 a'8 <c'' f''>8 a'8 <c'' e''>8 a'8 } >> |
	<< {a1} \\ { a8 a'8 <c'' e''>8 a'8 <c'' f''>8 a'8 <c'' e''>8 a'8 } >> |
}
