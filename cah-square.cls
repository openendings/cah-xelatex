% Class for printing CAH cards in 2"x2" square format (matching the official printed PDFs).

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cardsagainsthumanity}[2014/04/20 Cards Against Humanity class]

\DeclareOption{a4paper}
   {\setlength\paperheight {297mm}%
   \setlength\paperwidth  {210mm}}
\DeclareOption{letterpaper}
   {\setlength\paperheight {11in}%
    \setlength\paperwidth  {8.5in}}
\ExecuteOptions{letterpaper}
\ProcessOptions

\RequirePackage{fontspec}
\RequirePackage{tikz}
\RequirePackage{xcolor}
\RequirePackage[top=1cm,left=0.68cm,right=0.68cm,bottom=1cm]{geometry}

% Default font should be Helvetica or equivalent.
\setsansfont[Mapping=tex-text]{Helvetica CE 55 Roman}
\renewcommand{\familydefault}{\sfdefault}
\renewcommand{\seriesdefault}{\bfdefault}

\setlength{\textwidth}{6.5in}
\setlength{\textheight}{\dimexpr\paperheight-2cm\relax}

\setlength{\parindent}{0cm}

\newlength\cardheight
\newlength\cardwidth
\newlength\cardhorzpadding
\newlength\cardtoppadding
\newlength\cardbottompadding
\newlength\cardiconoffset
\newlength\cardiconwidth
\setlength{\cardwidth}{4.91cm}
\setlength{\cardheight}{5.02cm}
\setlength{\cardhorzpadding}{0.25cm}
\setlength{\cardtoppadding}{0.45cm}
\setlength{\cardbottompadding}{0.5cm}
\setlength{\cardiconoffset}{2mm}
\setlength{\cardiconwidth}{7mm}

\newcommand\answercard[1]{\def\isWhite{1}\genericcard{#1}{white}{black}}
\newcommand\questioncard[1]{\def\isWhite{0}\genericcard{#1}{black}{white}}


\newcommand\pickTwo{\def\isPickTwo{1}}

\newcommand\genericcard[3]{%
\def\isPickTwo{0}%
\setlength{\fboxsep}{0cm}%
\fcolorbox{#3}{#2}{
\hspace{\cardhorzpadding}%
\begin{minipage}[t][\cardheight][t]{\dimexpr\cardwidth-2\fboxsep-2\fboxrule-2\cardhorzpadding\relax}%
\begin{flushleft}%
\vspace{\cardtoppadding}%
\color{#3}%
\noindent #1
\vfill%
{%
\if\imageEnabled1
  \raisebox{-\cardiconoffset}{\includegraphics[width=\cardiconwidth]{\attributionimage}}
\fi
\attributionsize
\if\isPickTwo\attributiontextshort\else\attributiontextshort\fi%
\if\isPickTwo1
\hspace*{\fill} \picktwosize PICK \raisebox{\dimexpr- 1.4mm \relax}{\begin{tikzpicture}
		\draw[fill=white] (0,0) circle [radius=2.5mm] node {\picktwosizeB\color{black}2};
\end{tikzpicture}}%
\fi}%
\vspace{\dimexpr\cardbottompadding-\cardiconoffset\relax}%
\end{flushleft}%
\end{minipage}\hspace{\cardhorzpadding}}%
\hspace{0pt}%
}

% ATTRIBUTION; ICON
\newcommand\attributiontext{Cards Against Humanity}
\newcommand\attributiontextshort{CAH}
\newcommand\attributionimage{\if\isWhite1\whitecardicon\else\blackcardicon\fi}
\def\whitecardicon{res/cards_default}
\def\blackcardicon{res/cards_default}
\def\imageEnabled{1}

% Helper macros
\newcommand\blank[1][3.5em]{\underline{\hspace{#1}}}
\renewcommand{\normalsize}{\fontsize{14.8pt}{17.5pt}\selectfont}
\newcommand{\smallA}{\fontsize{13.7pt}{16.2pt}\selectfont}
\newcommand{\smallB}{\fontsize{12.6pt}{15.0pt}\selectfont}
\newcommand{\smallC}{\fontsize{11.6pt}{13.8pt}\selectfont}
\newcommand{\smallD}{\fontsize{10.6pt}{12.5pt}\selectfont}
\newcommand{\smallE}{\fontsize{9.6pt}{11.3pt}\selectfont}
\newcommand{\small}{\smallA}
\newcommand{\attributionsize}{\fontsize{5pt}{7pt}\selectfont}
\newcommand{\picktwosize}{\fontsize{10pt}{15pt}\selectfont}
\newcommand{\picktwosizeB}{\fontsize{13pt}{15pt}\selectfont}

\pagestyle{empty}
