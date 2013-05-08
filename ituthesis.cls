\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{ituthesis}[2012/09/06 A document class for IT University of Copenhagen theses and reports]

%% This document class is based on memoir
\LoadClass[a4paper, showtrims, 12pt, twoside, openright, onecolumn, final]{memoir}

%% Graphics
\RequirePackage{tikz}
\usetikzlibrary{positioning}

%% Listings
\RequirePackage{listings}
\lstset{frame=tb,
  aboveskip=3mm,
  belowskip=3mm,
  showstringspaces=false,
  basicstyle={\small\ttfamily},
  numbers=none,
  keywordstyle=\bfseries,
  commentstyle=\itshape,
  numberbychapter=true
}

\lstnewenvironment{code}[1][]%
{
   \noindent
   \minipage{\linewidth}
   \vspace{0.5\baselineskip}
   \lstset{#1}}
{\endminipage}

%% Get \maketitle to produce something nice for ITU
\setlength{\droptitle}{5cm}

%% More comprehensive math
\usepackage{amsmath}
\usepackage{amsfonts}

%% Better fonts
\usepackage[T1]{fontenc}
\usepackage{textcomp}

% Luxi Mono is an attractive typewriter font with bold and italic
\usepackage[scaled]{luximono}
\usepackage{palatino}

%% Abstract sans serif
\renewcommand{\abstractnamefont}{\Large\sffamily}

%% TOC sans serif

\renewcommand{\cftpartfont}{\normalfont\sffamily\bfseries}
\renewcommand{\cftchapterfont}{\normalfont\sffamily}
\renewcommand{\cftsectionfont}{\normalfont\sffamily}
\renewcommand{\cftchapterpagefont}{\normalfont\sffamily}
\renewcommand{\cftsectionpagefont}{\normalfont\sffamily}
\setsecnumdepth{chapter}

%% Parts sans serif
\renewcommand{\parttitlefont}{\Huge\sffamily}
\renewcommand{\partnamefont}{\Huge\sffamily}
\renewcommand{\partnumfont}{\Huge\sffamily}

%% Chapter headers sans serif
\chapterstyle{default} % try also: default , section , hangnum , companion , article, demo

\renewcommand{\chaptitlefont}{\normalfont\Huge\sffamily\raggedright} % set sans serif chapter title font
\renewcommand{\chapnamefont}{\normalfont\Huge\sffamily\raggedright}
\renewcommand{\chapnumfont}{\normalfont\Huge\sffamily\raggedright} % set sans serif chapter number font

%% Section headers sans serif
%\hangsecnum % hang the section numbers into the margin to match \chapterstyle{hangnum}
\maxsecnumdepth{subsection} % number subsections

\setsecheadstyle{\Large\sffamily\raggedright} % set sans serif section font
\setsubsecheadstyle{\large\sffamily\raggedright} % set sans serif subsection font

%% Captions sans serif
\captionnamefont{\sffamily}
\captiontitlefont{\sffamily}
\subcaptionfont{\sffamily}
\subcaptionlabelfont{\sffamily}


%% Mark term definitions
\newcommand{\termfont}{\itshape}
%\newcommand{\term}[1]{\marginpar{\termfont #1} {\termfont #1}} % Uncomment for margin terms
\newcommand{\term}[1]{{\termfont #1}}

\newlength{\linespace}
\setlength{\linespace}{\baselineskip}

%%%% for the title page and approval page.
\newlength{\toptafiddle}
\setlength{\toptafiddle}{2\linespace}
\newlength{\bottafiddle}
\setlength{\bottafiddle}{0pt}
\newlength{\topfiddle}
\setlength{\topfiddle}{\toptafiddle}
\newlength{\botfiddle}
\setlength{\botfiddle}{\onelineskip}

% your title
\newcommand{\settitle}[1]{\def\itutitle{#1}}
% you
\newcommand{\setauthor}[1]{\def\ituauthor{#1}}


%%% typesets the TITLE page
\newcommand{\thetitlepage}{
  \begin{tikzpicture}[remember picture,overlay,line width=0mm,shift=(current page.center)]
    \node[align=center,font=\sffamily\Huge] (title) at (0, 3cm){
      \itutitle
    };
    \node[align=center,font=\sffamily\Large] (author) at (0, 1cm){
      \ituauthor
    };
  \end{tikzpicture}
  \begin{tikzpicture}[remember picture,overlay,line width=0mm,shift=(current page.south east)]
    \node[anchor=south east] (logo) at (-2.5cm,2.5cm) {
      \includegraphics[width=7cm]{ITUlogoukorange}
    };
  \end{tikzpicture}
}