% Class for printing CAH cards in 63mmx88mm format (like the actual cards).

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cah-cardsize}[2014/04/20 Cards Against Humanity class]

\newlength\bleedsize

\newlength\cardheight
\newlength\cardwidth
\DeclareOption{pokercard}
   {\setlength\cardheight {3.5in}
    \setlength\cardwidth  {2.5in}
    \setlength\bleedsize{0in}}
\DeclareOption{pokercardWithBleed}
   {\setlength\cardheight {3.5in}
    \setlength\cardwidth  {2.5in}
    \setlength\bleedsize   {0.12in}}
\ExecuteOptions{pokercard}
\ProcessOptions

\setlength\paperwidth{\dimexpr\cardwidth+2\bleedsize\relax}
\setlength\paperheight{\dimexpr\cardheight+2\bleedsize\relax}

\RequirePackage{fontspec}
\RequirePackage{tikz}
\RequirePackage{xcolor}
\RequirePackage[top=-1em,left=0cm,right=0cm,bottom=0cm]{geometry}

% Default font should be Helvetica or equivalent.
\setsansfont[Mapping=tex-text]{Helvetica CE 55 Roman}
\renewcommand{\familydefault}{\sfdefault}
\renewcommand{\seriesdefault}{\bfdefault}

\setlength{\parindent}{0cm}

\newlength\cardleftpadding
\newlength\cardrightpadding
\newlength\cardtoppadding
\newlength\cardbottompadding
\newlength\cardiconoffset
\newlength\cardiconwidth
\setlength{\cardleftpadding}{\dimexpr 6mm+\bleedsize\relax}
\setlength{\cardrightpadding}{\dimexpr 7.6mm+\bleedsize\relax}
\setlength{\cardtoppadding}{\dimexpr 6mm+\bleedsize\relax}
\setlength{\cardbottompadding}{\dimexpr 9mm+\bleedsize\relax}
\setlength{\cardiconoffset}{2mm}
\setlength{\cardiconwidth}{7mm}

\newcommand\answercard[1]{\def\isWhite{1}\genericcard{#1}{white}{black}}
\newcommand\questioncard[1]{\def\isWhite{0}\genericcard{#1}{black}{white}}

\newcommand\pickTwo{\def\isPickTwo{1}}

\setlength{\topsep}{0cm}

\newcommand\genericcard[3]{%
\def\isPickTwo{0}%
\setlength{\fboxsep}{0cm}%
\newpage%
\colorbox{#2}{%
\hspace{\cardleftpadding}%
\begin{minipage}[t][\paperheight][t]{\dimexpr\paperwidth-\cardleftpadding-\cardrightpadding\relax}%
\begin{flushleft}%
\vspace{\cardtoppadding}%
\color{#3}%
\noindent #1
\vfill%
{%
\if\imageEnabled1
  \raisebox{-\cardiconoffset}{\includegraphics[width=\cardiconwidth]{\attributionimage}}
\fi
\attributionsize \attributiontext%
\if\isPickTwo1
\hspace*{\fill} \picktwosize PICK \raisebox{\dimexpr- 1.4mm \relax}{\begin{tikzpicture}
		\draw[fill=white] (0,0) circle [radius=2.5mm] node {\picktwosizeB\color{black}2};
\end{tikzpicture}}%
\fi}%
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
\newcommand{\small}{\smallA}
\newcommand{\attributionsize}{\fontsize{5pt}{7pt}\selectfont}
\newcommand{\picktwosize}{\fontsize{10pt}{15pt}\selectfont}
\newcommand{\picktwosizeB}{\fontsize{13pt}{15pt}\selectfont}

\pagestyle{empty}
