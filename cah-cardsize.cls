% Class for printing CAH cards in 63mmx88mm format (like the actual cards).

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cah-cardsize}[2014/04/20 Cards Against Humanity class]

\DeclareOption{pokercard}
   {\setlength\paperheight {88mm}%
    \setlength\paperwidth  {63mm}}
\ExecuteOptions{pokercard}
\ProcessOptions

\RequirePackage{fontspec}
\RequirePackage{xcolor}
\RequirePackage[top=-1em,left=0cm,right=0cm,bottom=0cm]{geometry}

% Default font should be Helvetica or equivalent.
\setsansfont[Mapping=tex-text]{Helvetica CE 55 Roman}
\renewcommand{\familydefault}{\sfdefault}
\renewcommand{\seriesdefault}{\bfdefault}

\setlength{\parindent}{0cm}

\newlength\cardheight
\newlength\cardwidth
\newlength\cardleftpadding
\newlength\cardrightpadding
\newlength\cardtoppadding
\newlength\cardbottompadding
\newlength\cardiconoffset
\newlength\cardiconwidth
\setlength{\cardwidth}{63mm}
\setlength{\cardheight}{88mm}
\setlength{\cardleftpadding}{6mm}
\setlength{\cardrightpadding}{8mm}
\setlength{\cardtoppadding}{6mm}
\setlength{\cardbottompadding}{9mm}
\setlength{\cardiconoffset}{2mm}
\setlength{\cardiconwidth}{7mm}

\newcommand\answercard[1]{\def\isWhite{1}\genericcard{#1}{white}{black}}
\newcommand\questioncard[1]{\def\isWhite{0}\genericcard{#1}{black}{white}}

\setlength{\topsep}{0cm}

\newcommand\genericcard[3]{%
\setlength{\fboxsep}{0cm}%
\newpage%
\colorbox{#2}{%
\hspace{\cardleftpadding}%
\begin{minipage}[t][\cardheight][t]{\dimexpr\cardwidth-\cardleftpadding-\cardrightpadding\relax}%
\begin{flushleft}%
\vspace{\cardtoppadding}%
\color{#3}%
\noindent #1
\vfill%
{%
\if\imageEnabled1
  \raisebox{-\cardiconoffset}{\includegraphics[width=\cardiconwidth]{\attributionimage}}
\fi
\attributionsize \attributiontext}%
\vspace{\dimexpr\cardbottompadding-\cardiconoffset\relax}%
\end{flushleft}%
\end{minipage}\hspace{\cardrightpadding}}%
}

% ATTRIBUTION; ICON
\newcommand\attributiontext{Cards Against Humanity}
\newcommand\attributionimage{\if\isWhite1\whitecardicon\else\blackcardicon\fi}
\def\whitecardicon{res/cards_default}
\def\blackcardicon{res/cards_default}
\def\imageEnabled{1}

% Helper macros
\newcommand\blank[1][3.5em]{\underline{\hspace{#1}}}
\renewcommand{\normalsize}{\fontsize{15pt}{20pt}\selectfont}
\newcommand{\smallA}{\fontsize{14.4pt}{19.2pt}\selectfont}
\newcommand{\smallB}{\fontsize{13.7pt}{16.2pt}\selectfont}
\newcommand{\smallC}{\fontsize{12.6pt}{15.0pt}\selectfont}
\newcommand{\smallD}{\fontsize{11.6pt}{13.8pt}\selectfont}
\newcommand{\smallE}{\fontsize{10.6pt}{12.5pt}\selectfont}
\newcommand{\small}{\smallA}
\newcommand{\attributionsize}{\fontsize{5pt}{7pt}\selectfont}

\pagestyle{empty}
