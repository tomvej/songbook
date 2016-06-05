\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{song}[2014/06/24 Class for typesetting song lyrics with chords]

\DeclareOption{columns}{\newcommand{\@twocolumn}{}}

\ProcessOptions\relax

\LoadClass[8pt]{extarticle}

\RequirePackage[utf8]{inputenc}
\RequirePackage{xstring}
\RequirePackage[a5paper,margin=15mm,top=10mm,bottom=10mm]{geometry}
\RequirePackage{multicol}

% \nth[delimeter=,]{N}{list}
% selects N-th element of delimeter-separated list (with modulo)	{{{
\newcount\result
\newcommand{\@nth}[3][,]{%
	\result=#2%
	\advance\result by -1%
	\StrCount{#3#1}{#1}[\num]%
	\divide\result by \num%
	\multiply\result by \num%
	\multiply\result by -1%
	\advance \result by #2%
	\StrBetween[\result,\numexpr\result+1]{#1#3#1}{#1}{#1}
}%}}}
%% auxiliary commands for putting chords up {{{
\newcommand{\@chord}[1]{\bf #1}
\newlength{\@cwidth}
\newcommand{\@up}[1]{%
	\settowidth{\@cwidth}{\@chord{#1}}%
	\raisebox{0.8\baselineskip}[1.5\baselineskip][0.5\baselineskip]{\@chord{#1}}\hspace{-\@cwidth}}
%}}}
% \strophe{comma-delimeted chord list}{lyrics with | for putting chords}
\newcommand{\strophe}{\@ifstar%
	{\bgroup\obeycr\@strophe@snd}
	{\bgroup\obeycr\@strophe}}
\newcommand{\@strophe}[2]{\@strophe@null{#1}#2\@end@strophe\egroup}
%% recursive commands for consuming strophes {{{
\def\@swallow#1{}
\def\@strophe@null#1{%
	\@ifnextchar\@end@strophe%
	{\@swallow}%
	{\@strophe@prime{#1}} }
\def\@strophe@prime#1#2\@end@strophe{%
	\@strophe@test{#1}{0}#2|\@end@strophe}
\def\@strophe@test#1#2{%
	\@ifnextchar\@end@strophe%
	{\@swallow}
	{\@up{\@nth{#2}{#1}}\@strophe@more{#1}{#2}} }
\def\@strophe@more#1#2#3|#4\@end@strophe{%
	{#3}{\@strophe@test{#1}{\numexpr#2+1}#4\@end@strophe}}
%}}}
\newcommand{\@strophe@snd}[2]{\leavevmode\@strophe@rm@null#2|\@end@strophe\egroup}
%% recursive commands for consuming `|' {{{
\def\@strophe@rm@null{%
	\@ifnextchar\@end@strophe%
	{\@swallow} %
	{\@strophe@rm}}
\def\@strophe@rm#1|#2\@end@strophe{%
	#1\@strophe@rm@null#2\@end@strophe}
%}}}
%% characters in parentheses are interpreted as chorus (italics) {{{
\catcode`(=\active
\catcode`)=\active
\newcommand{(}{\textit\bgroup}
\newcommand{)}{\egroup}
%}}}
% \defstrophe{command name}{chord list} -- defines strophe
% \defrefreain{chord list} -- defains refrain
%% define new strophes {{{
\def\defstrophe#1#2{%
	\expandafter\def\csname #1@nostar\endcsname{\strophe{#2}}%
	\expandafter\def\csname #1@star\endcsname{\strophe*{#2}}%
	\expandafter\def\csname#1\endcsname{\@ifstar%
	{\csname #1@star\endcsname}
	{\csname #1@nostar\endcsname}}
}
\renewcommand{\ref}{\hspace{-1em}\textbf{REF}}
\def\defrefrain#1{%
	\def\refrain{\@ifstar\refrain@star\refrain@nostar}%
	\def\refrain@star{\ref: \strophe*{#1}}%
	\def\refrain@nostar{\ref: \strophe{#1}}%
}%}}}
%% auxiliaries {{{
%% repetitions
\renewcommand{\[}{{}[:}
\renewcommand{\]}{:]}
%% chord helpers
\newcommand{\7}{\ensuremath{^7}}
\newcommand{\6}{\ensuremath{^6}}
\renewcommand{\#}{\ensuremath{^\sharp}}
\renewcommand{\^}[1]{\ensuremath{^#1}}
%% title
\renewcommand{\maketitle}{{\LARGE\bf\MakeUppercase\@title}\\{\Large\@author}\par}
\ifx\@twocolumn\undefined
	\AtBeginDocument{\maketitle}
\else
	\AtBeginDocument{\begin{multicols*}{2}[\maketitle]}
	\AtEndDocument{\end{multicols*}}
\fi
%% recitative
\newcommand{\rec}{\hspace{-1em}\textbf{REC}: \bgroup\obeycr\@rec}
\newcommand{\@rec}[1]{#1\egroup}
%% extra space
\newcommand{\+}{\quad}
%}}}
%% lengths
\setlength{\parindent}{0pt}
\setlength{\parskip}{\baselineskip}
\pagestyle{empty}
