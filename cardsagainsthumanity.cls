\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cardsagainsthumanity}[2014/04/20 Cards Against Humanity class]

\RequirePackage{fontspec}

% Default font should be Helvetica or equivalent.
\setsansfont{FreeSans}
\renewcommand{\familydefault}{\sfdefault}
\renewcommand{\seriesdefault}{\bfdefault}

\renewcommand{\normalsize}{\fontsize{16pt}{18pt}\selectfont}
\setlength{\textwidth}{6.5in}
\setlength{\textheight}{8in}

\setlength{\parindent}{0cm}

\newlength{\cardheight}
\setlength{\cardheight}{5cm}
\newlength{\cardwidth}
\setlength{\cardwidth}{5cm}

\newcommand\whitecard[1]{%
\fbox{
\begin{minipage}[t][\cardheight][t]{\dimexpr\cardwidth-2\fboxsep-2\fboxrule\relax}%
\begin{flushleft}%
#1
\end{flushleft}%
\end{minipage}}\hspace{0pt}%
}

\pagestyle{empty}
