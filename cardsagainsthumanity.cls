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
\RequirePackage[top=1cm,left=0.68cm,right=0.68cm]{geometry}

% Default font should be Helvetica or equivalent.
\setsansfont{Helvetica CE 55 Roman}
\renewcommand{\familydefault}{\sfdefault}
\renewcommand{\seriesdefault}{\bfdefault}

\renewcommand{\normalsize}{\fontsize{14.8pt}{17.5pt}\selectfont}
\setlength{\textwidth}{6.5in}
\setlength{\textheight}{8in}

\setlength{\parindent}{0cm}

\newlength\cardheight
\newlength\cardwidth
\newlength\cardhorzpadding
\newlength\cardtoppadding
\setlength{\cardwidth}{4.91cm}
\setlength{\cardheight}{5cm}
\setlength{\cardhorzpadding}{0.25cm}
\setlength{\cardtoppadding}{0.45cm}

\newcommand\whitecard[1]{%
\setlength{\fboxsep}{0cm}%
\fbox{
\hspace{\cardhorzpadding}%
\begin{minipage}[t][\cardheight][t]{\dimexpr\cardwidth-2\fboxsep-2\fboxrule-2\cardhorzpadding\relax}%
\begin{flushleft}%
\vspace{\cardtoppadding}%
\noindent #1
\end{flushleft}%
\end{minipage}\hspace{\cardhorzpadding}}\hspace{0pt}%
}

\pagestyle{empty}
