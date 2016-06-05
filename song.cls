\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{song}[2015/07/16 Class for typesetting song lyrics with chords]

\LoadClass[8pt]{extarticle}

\RequirePackage[utf8]{inputenc}
\RequirePackage[a5paper,margin=10mm]{geometry}

%% putting chords up {{{
\newcommand{\@chord}[1]{\bf #1}
\newlength{\@cwidth}
\newcommand{\@up}[1]{%
	\settowidth{\@cwidth}{\@chord{#1}}%
	\raisebox{0.8\baselineskip}[1.5\baselineskip][0.5\baselineskip]{\@chord{#1}}\hspace{-\@cwidth}%
}
%}}}
%% merging chords and lyrics {{{
\newcommand{\@srf}[2]{\@srf@txt#1 \@srf@chr@end#2|\@srf@txt@end}
% find next lyrics chunk
\def\@srf@txt#1\@srf@chr@end#2|{\@ifnextchar\@srf@txt@end%
	{#2\@gobble}%
	{#2\@srf@chr#1\@srf@chr@end}%
}
% is there another chord?
\def\@srf@chr{\@ifnextchar\@srf@chr@end%
	{\@srf@txt}%
	{\@srf@chr@more}%
}
% print next chord
\def\@srf@chr@more#1 {\@up{#1}\@srf@txt}
%}}}
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
