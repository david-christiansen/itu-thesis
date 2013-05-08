\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{ituthesis}[2012/09/06 A document class for IT University of Copenhagen theses and reports]

%% This document class is based on memoir
\LoadClass[a4paper, showtrims, 11pt, oneside, openright, onecolumn, final]{memoir}

%% Graphics
\RequirePackage{tikz-cd}

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
\chapterstyle{hangnum} % try also: default , section , hangnum , companion , article, demo

\renewcommand{\chaptitlefont}{\Huge\sffamily\raggedright} % set sans serif chapter title font
\renewcommand{\chapnumfont}{\Huge\sffamily\raggedright} % set sans serif chapter number font

%% Section headers sans serif
\hangsecnum % hang the section numbers into the margin to match \chapterstyle{hangnum}
\maxsecnumdepth{subsection} % number subsections

\setsecheadstyle{\Large\sffamily\raggedright} % set sans serif section font
\setsubsecheadstyle{\large\sffamily\raggedright} % set sans serif subsection font


