%
% MichiganTech.cls
% Do not edit this file unless there is an absolute need, and/or in the
% absence of knowledge of LaTeX class.

%
% LaTeX compiler
\NeedsTeXFormat{LaTeX2e}

%
% Class name and a brief description
\ProvidesClass{MichiganTech}[2015/05/11 HPC Superior Class]

%
% Document class (and options) to load
\LoadClass[letterpaper,twoside,12pt,fleqn]{article}

%
% Packages
\RequirePackage{etex}
\RequirePackage{amsfonts}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage[small,bf,up]{caption}
\RequirePackage[usenames,dvipsnames]{xcolor}
\RequirePackage{enumitem}
\RequirePackage{epsfig}
\RequirePackage{epstopdf}
\RequirePackage{fancybox}
\RequirePackage{fancyhdr}
\RequirePackage[hang,flushmargin,multiple]{footmisc}
\RequirePackage{framed}
\RequirePackage{graphicx}
\RequirePackage{lastpage}
\RequirePackage{latexsym}
\RequirePackage{listings}
\RequirePackage{longtable}
\RequirePackage{lscape}
\RequirePackage{makeidx}
\RequirePackage{multicol}
\RequirePackage{multirow}
\RequirePackage[square,comma,sort&compress,numbers]{natbib}
\RequirePackage{nextpage}
\RequirePackage{pstricks}
\RequirePackage{pst-all}
\RequirePackage{rotate}
\RequirePackage{rotating}
\RequirePackage{setspace}
\RequirePackage[bf]{subfigure}
\RequirePackage{textcomp}
\RequirePackage{titlesec}
\RequirePackage[nottoc]{tocbibind}
\RequirePackage[subfigure]{tocloft}
\RequirePackage{url}
\RequirePackage{verbatim}
\RequirePackage{wrapfig}
\RequirePackage[bookmarks,linktocpage]{hyperref} % This MUST be the LAST package
\RequirePackage{breakurl}               % This MUST come after hyperref

%
% Page format
\setlength{\oddsidemargin}{0.00in}  % Left side margin
\setlength{\evensidemargin}{0.00in} % Right side margin
\setlength{\topmargin}{-0.50in}     % Top margin
\setlength{\headheight}{0.50in}     % Header height
\setlength{\headsep}{0.35in}        % Separation between header & main text
\setlength{\topskip}{0.00in}        % Top skip
\setlength{\textwidth}{6.50in}      % Width of the text
\setlength{\textheight}{8.50in}     % Height of the text
\setlength{\footskip}{0.50in}       % Foot skip
\setlength{\parindent}{0.00in}      % First line indentation
\setlength{\parskip}{0.15in}        % Space between two paragraphs
\setlength{\columnseprule}{1pt}     % Width of column separator
\setlength{\columnsep}{20pt}        % Separation between columns

%
% Captions (figures, tables, etc.)
\setlength{\floatsep}{0.15in}          % Space left between floats.
\setlength{\textfloatsep}{\floatsep}   % Space between last top float
                                       % or first bottom float and the text
\setlength{\intextsep}{\floatsep}      % Space left on top and bottom
                                       % of an in-text float
\setlength{\abovecaptionskip}{0.10in}  % Space above caption
\setlength{\belowcaptionskip}{0.10in}  % Space below caption
\setlength{\captionmargin}{0.50in}     % Left/Right margin for caption
\setlength{\captionwidth}{5.00in}      % Caption width
\setlength{\abovedisplayskip}{-0.10in} % Space before Math stuff
\setlength{\belowdisplayskip}{-0.10in} % Space after Math stuff
\setlength{\arraycolsep}{0.10in}       % Gap between columns of an array
\setlength{\itemsep}{0.10in}           % Space between successive items

%
% Defining counters
\setcounter{tocdepth}{4}      % Depth of table of contents
\setcounter{lofdepth}{2}      % Depth of list of figures (subfigure)
\setcounter{lotdepth}{2}      % Depth of list of figures (subfigure)
\setcounter{secnumdepth}{0}   % Depth of section numbering
\setcounter{totalnumber}{50}
\setcounter{topnumber}{50}
\setcounter{bottomnumber}{50}

%
% Redefined commands and environments
\renewcommand{\baselinestretch}{1.10}
\renewcommand{\labelitemi}{$\dagger$}
\renewcommand{\labelitemii}{$\ddagger$}
\renewcommand{\labelitemiii}{$\ast$}
\renewcommand{\headrulewidth}{0.0pt}
\renewcommand{\footrulewidth}{0.1pt}

\renewcommand{\thesection}{\arabic{section}}
\renewcommand{\thesubsection}{\arabic{section}.\arabic{subsection}}
\renewcommand{\thesubsubsection}{\arabic{section}.\arabic{subsection}.\arabic{subsubsection}}
\renewcommand{\thefigure}{\arabic{figure}}
\renewcommand{\thetable}{\arabic{table}}
% \renewcommand{\theequation}{\arabic{section}.\arabic{subsection}.\arabic{equation}}
\renewcommand{\theequation}{\arabic{equation}}
\renewcommand{\labelitemi}{$\dag$}
\renewcommand{\bibname}{\large References}
\renewcommand\floatpagefraction{.9}
\renewcommand\topfraction{.9}
\renewcommand\bottomfraction{.9}
\renewcommand\textfraction{.1}
\renewcommand{\contentsname}{}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}

%
% Allow for consistent section/subsection spacing. This Forces LaTeX 
% to keep the same amount of space above and below each title, not 
% using them as flexible space
\titlespacing*{\section}{0cm}{0.5cm}{0.5cm}[0cm]
\titlespacing*{\subsection}{0cm}{0.5cm}{0.5cm}[0cm]
\titlespacing*{\subsubsection}{0cm}{0.5cm}{0.5cm}[0cm]

%
% Graphics type and search path
\graphicspath{{.}{./Images/}}
\DeclareGraphicsExtensions{.eps,.ps,.pdf,.png,.jpg}

%
% Colors
\definecolor{Black}{HTML}{000000}
\definecolor{Navy}{HTML}{000080}
\definecolor{DarkBlue}{HTML}{00008B}
\definecolor{MediumBlue}{HTML}{0000CD}
\definecolor{Blue}{HTML}{0000FF}
\definecolor{DarkGreen}{HTML}{006400}
\definecolor{Green}{HTML}{008000}
\definecolor{Teal}{HTML}{008080}
\definecolor{DarkCyan}{HTML}{008B8B}
\definecolor{DeepSkyBlue}{HTML}{00BFFF}
\definecolor{DarkTurquoise}{HTML}{00CED1}
\definecolor{MediumSpringGreen}{HTML}{00FA9A}
\definecolor{Lime}{HTML}{00FF00}
\definecolor{SpringGreen}{HTML}{00FF7F}
\definecolor{Aqua}{HTML}{00FFFF}
\definecolor{Cyan}{HTML}{00FFFF}
\definecolor{MidnightBlue}{HTML}{191970}
\definecolor{DodgerBlue}{HTML}{1E90FF}
\definecolor{LightSeaGreen}{HTML}{20B2AA}
\definecolor{ForestGreen}{HTML}{228B22}
\definecolor{SeaGreen}{HTML}{2E8B57}
\definecolor{DarkSlateGray}{HTML}{2F4F4F}
\definecolor{LimeGreen}{HTML}{32CD32}
\definecolor{MediumSeaGreen}{HTML}{3CB371}
\definecolor{Turquoise}{HTML}{40E0D0}
\definecolor{RoyalBlue}{HTML}{4169E1}
\definecolor{SteelBlue}{HTML}{4682B4}
\definecolor{DarkSlateBlue}{HTML}{483D8B}
\definecolor{MediumTurquoise}{HTML}{48D1CC}
\definecolor{Indigo}{HTML}{4B0082}
\definecolor{DarkOliveGreen}{HTML}{556B2F}
\definecolor{CadetBlue}{HTML}{5F9EA0}
\definecolor{CornflowerBlue}{HTML}{6495ED}
\definecolor{MediumAquaMarine}{HTML}{66CDAA}
\definecolor{DimGray}{HTML}{696969}
\definecolor{SlateBlue}{HTML}{6A5ACD}
\definecolor{OliveDrab}{HTML}{6B8E23}
\definecolor{SlateGray}{HTML}{708090}
\definecolor{LightSlateGray}{HTML}{778899}
\definecolor{MediumSlateBlue}{HTML}{7B68EE}
\definecolor{LawnGreen}{HTML}{7CFC00}
\definecolor{Chartreuse}{HTML}{7FFF00}
\definecolor{Aquamarine}{HTML}{7FFFD4}
\definecolor{Maroon}{HTML}{800000}
\definecolor{Purple}{HTML}{800080}
\definecolor{Olive}{HTML}{808000}
\definecolor{Gray}{HTML}{808080}
\definecolor{SkyBlue}{HTML}{87CEEB}
\definecolor{LightSkyBlue}{HTML}{87CEFA}
\definecolor{BlueViolet}{HTML}{8A2BE2}
\definecolor{DarkRed}{HTML}{8B0000}
\definecolor{DarkMagenta}{HTML}{8B008B}
\definecolor{SaddleBrown}{HTML}{8B4513}
\definecolor{DarkSeaGreen}{HTML}{8FBC8F}
\definecolor{LightGreen}{HTML}{90EE90}
\definecolor{MediumPurple}{HTML}{9370DB}
\definecolor{DarkViolet}{HTML}{9400D3}
\definecolor{PaleGreen}{HTML}{98FB98}
\definecolor{DarkOrchid}{HTML}{9932CC}
\definecolor{YellowGreen}{HTML}{9ACD32}
\definecolor{Sienna}{HTML}{A0522D}
\definecolor{Brown}{HTML}{A52A2A}
\definecolor{DarkGray}{HTML}{A9A9A9}
\definecolor{LightBlue}{HTML}{ADD8E6}
\definecolor{GreenYellow}{HTML}{ADFF2F}
\definecolor{PaleTurquoise}{HTML}{AFEEEE}
\definecolor{LightSteelBlue}{HTML}{B0C4DE}
\definecolor{PowderBlue}{HTML}{B0E0E6}
\definecolor{FireBrick}{HTML}{B22222}
\definecolor{DarkGoldenRod}{HTML}{B8860B}
\definecolor{MediumOrchid}{HTML}{BA55D3}
\definecolor{RosyBrown}{HTML}{BC8F8F}
\definecolor{DarkKhaki}{HTML}{BDB76B}
\definecolor{Silver}{HTML}{C0C0C0}
\definecolor{MediumVioletRed}{HTML}{C71585}
\definecolor{IndianRed}{HTML}{CD5C5C}
\definecolor{Peru}{HTML}{CD853F}
\definecolor{Chocolate}{HTML}{D2691E}
\definecolor{Tan}{HTML}{D2B48C}
\definecolor{LightGray}{HTML}{D3D3D3}
\definecolor{Thistle}{HTML}{D8BFD8}
\definecolor{Orchid}{HTML}{DA70D6}
\definecolor{GoldenRod}{HTML}{DAA520}
\definecolor{PaleVioletRed}{HTML}{DB7093}
\definecolor{Crimson}{HTML}{DC143C}
\definecolor{Gainsboro}{HTML}{DCDCDC}
\definecolor{Plum}{HTML}{DDA0DD}
\definecolor{BurlyWood}{HTML}{DEB887}
\definecolor{LightCyan}{HTML}{E0FFFF}
\definecolor{Lavender}{HTML}{E6E6FA}
\definecolor{DarkSalmon}{HTML}{E9967A}
\definecolor{Violet}{HTML}{EE82EE}
\definecolor{PaleGoldenRod}{HTML}{EEE8AA}
\definecolor{LightCoral}{HTML}{F08080}
\definecolor{Khaki}{HTML}{F0E68C}
\definecolor{AliceBlue}{HTML}{F0F8FF}
\definecolor{HoneyDew}{HTML}{F0FFF0}
\definecolor{Azure}{HTML}{F0FFFF}
\definecolor{SandyBrown}{HTML}{F4A460}
\definecolor{Wheat}{HTML}{F5DEB3}
\definecolor{Beige}{HTML}{F5F5DC}
\definecolor{WhiteSmoke}{HTML}{F5F5F5}
\definecolor{MintCream}{HTML}{F5FFFA}
\definecolor{GhostWhite}{HTML}{F8F8FF}
\definecolor{Salmon}{HTML}{FA8072}
\definecolor{AntiqueWhite}{HTML}{FAEBD7}
\definecolor{Linen}{HTML}{FAF0E6}
\definecolor{LightGoldenRodYellow}{HTML}{FAFAD2}
\definecolor{OldLace}{HTML}{FDF5E6}
\definecolor{Red}{HTML}{FF0000}
\definecolor{Fuchsia}{HTML}{FF00FF}
\definecolor{Magenta}{HTML}{FF00FF}
\definecolor{DeepPink}{HTML}{FF1493}
\definecolor{OrangeRed}{HTML}{FF4500}
\definecolor{Tomato}{HTML}{FF6347}
\definecolor{HotPink}{HTML}{FF69B4}
\definecolor{Coral}{HTML}{FF7F50}
\definecolor{DarkOrange}{HTML}{FF8C00}
\definecolor{LightSalmon}{HTML}{FFA07A}
\definecolor{Orange}{HTML}{FFA500}
\definecolor{LightPink}{HTML}{FFB6C1}
\definecolor{Pink}{HTML}{FFC0CB}
\definecolor{Gold}{HTML}{FFD700}
\definecolor{PeachPuff}{HTML}{FFDAB9}
\definecolor{NavajoWhite}{HTML}{FFDEAD}
\definecolor{Moccasin}{HTML}{FFE4B5}
\definecolor{Bisque}{HTML}{FFE4C4}
\definecolor{MistyRose}{HTML}{FFE4E1}
\definecolor{BlanchedAlmond}{HTML}{FFEBCD}
\definecolor{PapayaWhip}{HTML}{FFEFD5}
\definecolor{LavenderBlush}{HTML}{FFF0F5}
\definecolor{SeaShell}{HTML}{FFF5EE}
\definecolor{Cornsilk}{HTML}{FFF8DC}
\definecolor{LemonChiffon}{HTML}{FFFACD}
\definecolor{FloralWhite}{HTML}{FFFAF0}
\definecolor{Snow}{HTML}{FFFAFA}
\definecolor{Yellow}{HTML}{FFFF00}
\definecolor{LightYellow}{HTML}{FFFFE0}
\definecolor{Ivory}{HTML}{FFFFF0}
\definecolor{White}{HTML}{FFFFFF}

\newcommand{\guserid}[1]{\textcolor{Blue}{\texttt{#1}}}
\newcommand{\gemail}[1]{\textcolor{Blue}{\texttt{#1}}}

%
% Retrieve values for different variables
\def\projecttitle#1{\gdef\@projecttitle{#1}}
\def\piname#1{\gdef\@piname{#1}}
\def\piposition#1{\gdef\@piposition{#1}}
\def\pidept#1{\gdef\@pidept{#1}}
\def\pioffice#1{\gdef\@pioffice{#1}}
\def\piphone#1{\gdef\@piphone{#1}}
\def\piemail#1{\gdef\@piemail{#1}}
\def\piwebsite#1{\gdef\@piwebsite{#1}}
\def\piuniversity#1{\gdef\@piuniversity{#1}}
\def\piuniversityaddress#1{\gdef\@piuniversityaddress{#1}}

\newcommand{\ptitle}{\expandafter \@projecttitle}
\newcommand{\name}{\expandafter \@piname}
\newcommand{\position}{\expandafter \@piposition}
\newcommand{\dept}{\expandafter \@pidept}
\newcommand{\office}{\expandafter \@pioffice}
\newcommand{\phone}{\expandafter \@piphone}
\newcommand{\email}{\expandafter \@piemail}
\newcommand{\website}{\expandafter \@piwebsite}
\newcommand{\university}{\expandafter \@piuniversity}
\newcommand{\universityaddress}{\expandafter \@piuniversityaddress}

%
% Fancy headers and footers
\pagestyle{fancy}
\renewcommand{\sectionmark}[1]{\markboth{{#1\;}}{}}
\renewcommand{\subsectionmark}[1]{\markright{{#1}}}
\fancyhf{}
\fancyhead[L]{}
\fancyhead[R]{}
\fancyfoot[L]{\name, \dept}
\fancyfoot[R]{\thepage}

% Define plain pagestyle to be empty
\makeatletter
  \let\ps@plain\ps@empty
\makeatother

\renewcommand{\bibnumfmt}[1]{#1.}
\renewcommand{\section}[2]{}%
\interlinepenalty=1000

%
% Cover page
\def\coverpage{%

  \vspace*{-0.50in}
  \begin{figure}
    \begin{center}
      \includegraphics[width=3.25in]{MichiganTech}
      \label{MichiganTechLogo}
    \end{center}
  \end{figure}

  \vspace*{0.50in}
  \begin{center}
    \textsf{Superior}\\
    \texttt{superior.research.mtu.edu}\\
    \vspace{0.50in}
    \textsf{\ptitle}\\
    \vspace{0.15in}
    {\small \name\\
    \position, \dept\\
    \office{} $\cdot$ \phone{} $\cdot$ \gemail{\email}}
  \end{center}

  \vspace{0.05in}
  \hrule
  \vspace{0.05in}
  \begin{spacing}{1.25}
    \tableofcontents
  \end{spacing}
  \newpage
}
%% Common settings end %%

%% Resume settings begin %%

%
% Resume title
\def\resumetitle{%
  \addcontentsline{toc}{section}{Resume}
  \vspace*{-0.50in}
  \textsf{\name}\\
  \position      \hfill \office\\
  \dept          \hfill \phone\\
  \university    \hfill \gemail{\email}\\
  \hrule
}

%% Resume settings end %%

%% Proposal settings begin %%

\def\proposaltitle{%
  \newpage
  \addcontentsline{toc}{section}{Project}
}
%% Proposal settings end %%

%% Checklist settings begin %%

\newcommand*{\thecheckbox}{\hss$\Box$}
\newenvironment*{checklist}
{\list{}{%
\renewcommand*{\makelabel}[1]{\thecheckbox}}}


\def\checklistpage{%
  \newpage

  \subsection*{Proposal Check List}
  {\small
  \begin{checklist}
  \item Resume
  \item Proposal
        \begin{checklist}
        \item Abstract
        \item Description
        \item User population - list of users, their status and affiliation
        \item Data sets
              \begin{checklist}
              \item Type (e.g., health care, financial, etc.)
              \item Classification (e.g., sensitive/confidential, private,
                    public, etc.)
              \item Regulations (e.g., ITAR/EAR, HIPAA, FERPA, etc.)
              \end{checklist}
        \item Preliminary results, if available
        \item Resources being requested
              \begin{checklist}
              \item \# of CPU/GPU
              \item RAM/memory
              \item Storage
              \item Time
              \item Software
              \item Compilers
              \end{checklist}
        \item Software
              \begin{checklist}
              \item CPU intensive
              \item Memory intensive
              \item Storage intensive
              \item Runs only in serial fashion (one CPU core)
              \item Runs only in serial fashion but can use CUDA cores on a GPU
              \item Runs in parallel but does not scale well
              \item Runs in parallel and scales well up to few tens of CPU cores
              \item Runs in parallel and scales well up to few hundreds of CPU cores
              \item Runs in parallel and scales well up to few thousands of CPU cores
              \end{checklist}
        \item Source of funding for
              \begin{checklist}
              \item project, if applicable
              \item software, compilers, etc., if commercial
              \end{checklist}
        \end{checklist}
  \end{checklist}
  }
}

%% Checklist settings end %%
