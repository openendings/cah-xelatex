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
\setlength{\cardwidth}{4.91cm}
\setlength{\cardheight}{5cm}
\setlength{\cardhorzpadding}{0.25cm}
\setlength{\cardtoppadding}{0.45cm}
\setlength{\cardbottompadding}{0.45cm}

\newcommand\answercard[1]{\genericcard{#1}{white}{black}}
\newcommand\questioncard[1]{\genericcard{#1}{black}{white}}

\newcommand\genericcard[3]{%
\setlength{\fboxsep}{0cm}%
\fcolorbox{#3}{#2}{
\hspace{\cardhorzpadding}%
\begin{minipage}[t][\cardheight][t]{\dimexpr\cardwidth-2\fboxsep-2\fboxrule-2\cardhorzpadding\relax}%
\begin{flushleft}%
\vspace{\cardtoppadding}%
\color{#3}%
\noindent #1
\vfill%
{\attributionsize \attributiontext}%
\vspace{\cardtoppadding}%
\end{flushleft}%
\end{minipage}\hspace{\cardhorzpadding}}%
\hspace{0pt}%
}

% ATTRIBUTION
\newcommand\attributiontext{Cards Against Humanity}

% Helper macros
\newcommand\blank[1][3.5em]{\underline{\hspace{#1}}}
\renewcommand{\normalsize}{\fontsize{14.8pt}{17.5pt}\selectfont}
\newcommand{\small}{\fontsize{13.7pt}{16.2pt}\selectfont}
\newcommand{\smaller}{\fontsize{11.6pt}{13.8pt}\selectfont}
\newcommand{\smallest}{\fontsize{9.6pt}{11.3pt}\selectfont}
\newcommand{\attributionsize}{\fontsize{5pt}{7pt}\selectfont}

\pagestyle{empty}
