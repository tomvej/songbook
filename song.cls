\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{song}[2015/07/16 Class for typesetting song lyrics with chords]

\LoadClass[8pt]{extarticle}

\RequirePackage[utf8]{inputenc}
\RequirePackage[a5paper,margin=10mm]{geometry}
\RequirePackage{ifthen}

%% putting chords up {{{
\newcommand{\@chord}[1]{\bf #1}
\newlength{\@cwidth}
\newlength{\@twidth}
\newcommand{\@up}[2]{%
	\settowidth{\@cwidth}{\@chord{#1}}%
	\settowidth{\@twidth}{#2}%
	\raisebox{0.8\baselineskip}[1.5\baselineskip][0.5\baselineskip]{\@chord{#1}}\hspace{-\@cwidth}%
	\ifthenelse{\@cwidth > \@twidth}{\makebox[\@cwidth][l]{#2}}{#2}%
}
%}}}
%% merging chords and lyrics {{{
\newcommand{\@srf}[2]{\@srf@first#1 \@srf@chr@end#2|\@srf@txt@end}
% print first lyrics part
\def\@srf@first#1\@srf@chr@end#2|{#2\@ifnextchar\@srf@txt@end%
	{\@gobble}%
	{\@srf@chr#1\@srf@chr@end}%
}
% find next chord
\def\@srf@chr{\@ifnextchar\@srf@chr@end%
	{\@srf@txt@gobble}%
	{\@srf@chr@more}%
}
% gobble | in text
\def\@srf@txt@gobble#1|{#1\@ifnextchar\@srf@txt@end%
	{\@gobble}%
	{\@srf@txt@gobble}%
}
% retrieve next chord
\def\@srf@chr@more#1 {\@srf@txt{#1}}
% find next text part (and print)
\def\@srf@txt#1#2\@srf@chr@end#3|{\@up{#1}{#3}\@ifnextchar\@srf@txt@end%
	{\@gobble}%
	{\@srf@chr#2\@srf@chr@end}%
}
%% strophe parsing {{{
{\catcode`\^^M=12%
	\gdef\@strophe{\catcode`\^^M=12 \@strof}%
	\gdef\@strof#1^^M#2^^M{\@ifnextchar\egroup%
		{\@srf{#1}{#2}}%
		{\@srf{#1}{#2}\\\@strof}%
	}%
}
%}}}
%% strophe definitions {{{
\let\endstrophe\egroup
\def\strophe{\bgroup\@ifstar{\obeycr}{\@strophe}}
\renewcommand{\ref}{\hspace{-1em}\textbf{REF}}
\def\refrain{\ref: \strophe}
\newenvironment{recitative}{\it\obeycr}{}
%}}}
%% title {{{
\renewcommand{\maketitle}{{\LARGE\bf\MakeUppercase\@title}\\{\Large\@author}\par}
\AtBeginDocument{\maketitle}
%}}}
%% chord helpers {{{
\def\7{\ensuremath{^7}}
\def\6{\ensuremath{^6}}
\def\#{\ensuremath{^\sharp}}
\def\^#1{\ensuremath{^#1}}
%}}}
%% other auxiliaries {{{
%% repetition
\def\[{{}[:}
\def\]{:]}
%% chorus
\catcode`(=\active
\catcode`)=\active
\newcommand{(}{\bgroup\it}
\newcommand{)}{\egroup}
%}}}
\setlength\parindent{0pt}
\setlength\parskip{\baselineskip}
\pagestyle{empty}
