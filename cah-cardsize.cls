% Class for printing CAH cards in 2"x2" square format (matching the official printed PDFs).

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cardsagainsthumanity}[2014/04/20 Cards Against Humanity class]

\DeclareOption{pokercard}
   {\setlength\paperheight {3in}%
    \setlength\paperwidth  {2in}}
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
\newlength\cardhorzpadding
\newlength\cardtoppadding
\newlength\cardbottompadding
\setlength{\cardwidth}{2in}
\setlength{\cardheight}{3in}
\setlength{\cardhorzpadding}{0.35cm}
\setlength{\cardtoppadding}{0.45cm}
\setlength{\cardbottompadding}{0.45cm}

\newcommand\answercard[1]{\genericcard{#1}{white}{black}}
\newcommand\questioncard[1]{\genericcard{#1}{black}{white}}

\setlength{\topsep}{0cm}

\newcommand\genericcard[3]{%
\setlength{\fboxsep}{0cm}%
\newpage%
\colorbox{#2}{%
\hspace{\cardhorzpadding}%
\begin{minipage}[t][\cardheight][t]{\dimexpr\cardwidth-2\cardhorzpadding\relax}%
\begin{flushleft}%
\vspace{\cardtoppadding}%
\color{#3}%
\noindent #1
\vfill%
{\attributionsize \attributiontext}%
\vspace{\cardtoppadding}%
\end{flushleft}%
\end{minipage}\hspace{\cardhorzpadding}}%
}

% ATTRIBUTION
\newcommand\attributiontext{Cards Against Humanity}

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

\pagestyle{empty}
