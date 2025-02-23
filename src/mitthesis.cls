%%
%% MIT LaTeX Thesis Class
%%

\ProvidesClass{mitthesis}
\NeedsTeXFormat{LaTeX2e}

% Based on the memoir class
\newcommand{\draftstring}{}
\DeclareOption{draftversion}{\renewcommand{\draftstring}{[draft: \today]}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions
\LoadClass{memoir}


%%
%% Fixes
%%
\RequirePackage{memhfixc}

\RequirePackage{lipsum}

% Constant spacing between paragraphs
\raggedbottom

%%
%% Fonts
%%

\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
%\RequirePackage{newpxtext} % UNCOMMENT THIS FOR PALATINO FONT!
%\RequirePackage{newpxmath} % UNCOMMENT THIS FOR PALATINO FONT!
%\useosf % old-style figures in text, not in math
\newcommand{\lowercapsss}[1]{\textls[40]{\textsc{\MakeLowercase{#1}}}}
\newcommand{\lowercaps}[1]{\textls[70]{\textsc{\MakeLowercase{#1}}}}
\newcommand{\uppercaps}[1]{\textls[120]{\textsc{\MakeUppercase{#1}}}}
\newcommand{\uppercapsss}[1]{\textsc{\MakeUppercase{#1}}}

\newcommand*{\myliningnumfont}{\fontfamily{ppl}\selectfont}


% verbatim fonts
\RequirePackage[scaled=.85]{beramono}
\RequirePackage{fancyvrb}

%%
%% Page layout
%%
\RequirePackage[letterpaper,
      top=1in,
      bottom=1in,
      right=3in,
      left=1in,
      marginparwidth=2in, marginparsep=0.15in,asymmetric,ignoremp]{geometry}

\settypeblocksize{*}{28pc}{2}
\setsidecaps{0.15in}{2in}
\setmarginnotes{0.15in}{2in}{6pt}
\sideparmargin{right}%
\sidecapmargin{right}
\setsidecappos{b}

\setlength{\abovecaptionskip}{0pt}
\setlength{\belowcaptionskip}{0pt}
\setlength{\textfloatsep}{14pt}% plus 0.0pt minus 0.0pt}
\setlength{\intextsep}{14pt}% plus 0.0pt minus 0.0pt}
\setlength{\floatsep}{0pt}% plus 0.0pt minus 0.0pt}

% Full-size figures
\newlength\marginextra\marginextra=2in
\newlength\fullwidth\fullwidth=\textwidth
\advance\fullwidth by \marginextra

\newcounter{fullfigcnt}

\newlength{\fullwidthlen}
\setlength{\fullwidthlen}{\marginparwidth}
\addtolength{\fullwidthlen}{\marginparsep}
\strictpagechecktrue
\newlength\zzza
\newlength\zzzb
\newenvironment{fullwidthfig}{%
  \begin{adjustwidth}{0em}{-\wholemargin}%
}{%
  \end{adjustwidth}%
}

\let\savedCaption=\caption
\newcommand*{\captionb}[3][\shortcaption]{%
  \def\shortcaption{#2}%
  \sidepar{\vspace{2pt}%
  \savedCaption[#1]{#2}\label{#3}}%
  \vspace{-0.26in}%
}

% No orphans
\clubpenalty = 500
\widowpenalty = 1000

% Add or remove lines from facing pages
\RequirePackage{addlines}

%%
%% Line breaking
%%

\RequirePackage[final=true,step=1]{microtype}
\RequirePackage{ragged2e}

%%
%% Colors
%%

\RequirePackage[table,pdftex,dvipsnames]{xcolor}

\definecolor{MITred}{RGB}{163, 31, 52}
\definecolor{MITdg}{RGB}{138, 139, 140}
\definecolor{MITlg}{RGB}{194, 192, 191}
\definecolor{AAblue}{RGB}{0, 23, 63}
\definecolor{AAMITmix}{RGB}{82, 27, 58}

\definecolor{redc}{RGB}{230, 50, 50}
\definecolor{bluec}{RGB}{0, 70, 150}
\definecolor{greenc}{RGB}{50, 140, 80}

\definecolor{red}{HTML}{AD1737}
\definecolor{brown}{HTML}{990000}
\definecolor{bar}{HTML}{8D9965}

\colorlet{chapnum}{MITred}
\definecolor{largeornament}{gray}{0.85}
\definecolor{smallornament}{gray}{0.65}

\colorlet{title}{black}
\colorlet{partnum}{MITred}
\colorlet{tocchapnum}{MITred}


%%
%% Graphics
%%

\RequirePackage{float}
\RequirePackage{morefloats}
\RequirePackage{graphicx}
\RequirePackage{epstopdf}
\RequirePackage{subfig} % subcaptions for subfigures
\RequirePackage{varwidth} % package to limit the width of tikzpictures
\RequirePackage{fixltx2e} % make sure list of figures is ordered correctly

\RequirePackage{tikz}
\RequirePackage{adjustbox}
\RequirePackage{pgfplots}
\usetikzlibrary{arrows,shapes,positioning,shadows,trees,patterns,intersections,matrix,fit,backgrounds}
\pgfplotsset{compat=newest}
  \pgfplotsset{plot coordinates/math parser=false}
\newlength\figureheight
    \newlength\figurewidth
\RequirePackage{tikz-3dplot}
\RequirePackage{tkz-euclide}
\tikzset{
  basic box/.style={
    shape=rectangle, rounded corners, align=center,
    draw=#1, fill=#1!25},
}
\RequirePackage{standalone}

%%
%% Math
%%

\RequirePackage{amsfonts}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{relsize}
\RequirePackage{siunitx} % to align numbers on the period
\newcommand\bmmax{0}
\RequirePackage{bm}
\RequirePackage{mathtools}
\RequirePackage{textcomp} % Needed for symbols such as degrees, copyright, etc.

%%
%% Fonts (2)
%%
% \RequirePackage[scale=1.09,textosf,mathlf,swash,roundv]{MinionPro} % COMMENT THIS FOR PALATINO
% \RequirePackage[scale=1.00]{MyriadPro} % COMMENT THIS FOR PALATINO
\linespread{1.11}
\DeclareMathAlphabet{\mathfrak}{OMS}{cmsy}{m}{n}
\SetMathAlphabet\mathfrak{bold}{OMS}{cmsy}{b}{n}
\let\mathscr\mathfrak

%%
%% Division styles
%%

% Part style
\renewcommand{\partnamefont}{\raggedright\LARGE\scshape}
\renewcommand{\partnumfont}{\color{partnum}\LARGE\scshape}
\renewcommand{\parttitlefont}{\color{black}\raggedright\LARGE\scshape}
\renewcommand{\printparttitle}[1]{\parttitlefont \uppercaps{#1}}

% Chapter style
\RequirePackage{titlesec}
\makechapterstyle{mit}{%
  \renewcommand{\printchaptername}{}
  \renewcommand{\chapternamenum}{}
  \renewcommand{\printchapternum}{%
   \marginnote[8.5pt]{\fontsize{50pt}{60pt}\textsf{\selectfont\textcolor{chapnum}{{\thechapter}}}}%
  }%
  \renewcommand{\afterchapternum}{}
  %\renewcommand{\chaptitlefont}{\raggedright\large\setSpacing{1.5}\uppercaps}
  \renewcommand{\printchaptertitle}[1]{\raggedright\large\setSpacing{1.5}\uppercaps{##1}}
  \renewcommand{\afterchaptertitle}{\vspace*{-10pt}\linebreak\rule{\linewidth}{0.2pt}\par\nobreak\vskip0.5\baselineskip}%
}

\titleformat{\section}
    {\relax}{\large\textsc{\MakeLowercase{\thesection}}}{1em}{\large\lowercaps}

\titleformat{\subsection}
    {\relax}{\textsc{\MakeLowercase{\thesubsection}}}{1em}{\lowercaps}

% Paragraph break
\newcommand{\parabreak}{%
  \fancybreak{%
    \vspace{\baselineskip}
    \color{smallornament}\Large\decofourleft
    \vspace{\baselineskip}
  }
}


%%
%% Tops and tails
%%

% Page style
\nouppercaseheads
\createmark{chapter}{left}{shownumber}{}{\hspace{0.25em} }
\createmark{section}{right}{shownumber}{}{\hspace{0.25em} }

\makepagestyle{mit}
\makeevenfoot{mit}{\small\textcolor{black!60}{\thepage}}%
                  {}%
                  {\footnotesize\scshape\textcolor{black!60}{\lowercapsss{\rightmark}}}
\makeoddfoot{mit}{\footnotesize\scshape\textcolor{black!60}{\lowercapsss{\leftmark}}}%
                 {}%
                 {\small\textcolor{black!60}{\thepage}}

% Plain headers and footers
\makeevenfoot{plain}{\small\textcolor{black!60}{\thepage}}{}{}
\makeoddfoot{plain}{}{}{\small\textcolor{black!60}{\thepage}}

% Empty part page style
\aliaspagestyle{part}{empty}


%%
%% Lists
%%

% Table of Contents
\maxtocdepth{section}

\renewcommand{\cftpartfont}{\large}
\renewcommand{\cftpartleader}{}
\renewcommand{\cftpartafterpnum}{\cftparfillskip}
\cftsetindents{part}{0em}{0em}
\renewcommand{\partnumberline}[1]{}
\cftpagenumbersoff{part}

\renewcommand{\cftchapterfont}{\normalsize}
\renewcommand{\cftchapterpagefont}{\normalsize}
\renewcommand{\cftchapterpresnum}{\hspace*{-1.5em}\color{tocchapnum}}
\cftsetindents{chapter}{0em}{0em}
\renewcommand{\cftchapterleader}{}
\renewcommand{\cftchapterafterpnum}{\cftparfillskip}

\renewcommand{\cftsectionfont}{\small}
\renewcommand{\cftsectionpagefont}{\small}
\cftsetindents{section}{0em}{2.3em}
\renewcommand{\cftsectionleader}{}
\renewcommand{\cftsectionafterpnum}{\cftparfillskip}

\renewcommand*{\cftchapterformatpnum}[1]{%
  \cftchapterformatpnumhook{#1}%
  {\quad\cftchapterpagefont #1}
}
\renewcommand*{\cftsectionformatpnum}[1]{%
  \cftsectionformatpnumhook{#1}%
  {\quad\cftsectionpagefont #1}
}

% List of Figures/Tables
\renewcommand{\cftfigurepresnum}{\hspace*{-2.25em}\color{tocchapnum}}
\renewcommand{\cftfigureleader}{ }
\cftsetindents{figure}{0em}{0em}
\renewcommand{\cftfigureafterpnum}{\cftparfillskip\vspace{4pt}}

\renewcommand{\cfttablepresnum}{\hspace*{-2.25em}\color{tocchapnum}}
\renewcommand{\cfttableleader}{ }
\cftsetindents{table}{0em}{0em}
\renewcommand{\cfttableafterpnum}{\cftparfillskip\vspace{4pt}}

% Enumeratable list
\newenvironment{enum}{%
  \begin{list}{\textcolor{MITred!75!black}{\arabic{enumi}.}}{%
    \setlength{\topsep}{\onelineskip}
    \setlength{\partopsep}{0pt}
    \setlength{\parsep}{\parskip}
    \setlength{\itemsep}{\parskip}
    \usecounter{enumi}
  }
}{\end{list}}

% Itemized list
\newenvironment{items}{%
  \begin{list}{\textcolor{MITred!75!black}{\textbullet}}{%
    \setlength{\topsep}{0.5\onelineskip}
    \setlength{\partopsep}{0pt}
    \setlength{\parsep}{\parskip}
    \setlength{\itemsep}{1.25\parskip}
    \setlength{\leftmargin}{\parindent}
    \setlength{\itemindent}{0pt}
  }
}{\end{list}}

% Definitions in lists
\newcommand{\iterm}[1]{\item \term{#1}}

% In-paragraph lists
\usepackage{paralist}

%%
%% Captions
%%

\RequirePackage{caption}
\captionsetup[figure]{labelfont={footnotesize,rm,bf},font={footnotesize,rm},
                      justification=RaggedRight,%
                      singlelinecheck=false}
\captionsetup[table]{labelfont={footnotesize,rm,bf},font={footnotesize,rm},
                     justification=RaggedRight,%
                     singlelinecheck=false,%
                     position=bottom}
\captionsetup[sourcecode]{font={footnotesize,rm},%
                          justification=RaggedRight,%
                          singlelinecheck=false,%
                          position=bottom}

\DeclareCaptionStyle{marginfigure}{labelfont={footnotesize,rm,bf},font={footnotesize,rm},
                            justification=RaggedRight,%
                            singlelinecheck=false}

%%
%% Tables
%%

\RequirePackage{longtable}
\RequirePackage{pdflscape}
\RequirePackage{multirow}

\newcommand{\twoguides}{%
  \begin{tikzpicture}
    \draw (-1,1) -- (-1,1);
    \begin{scope}[color=red]
      \draw (-1,0.75) -- (-0.25,0.5);
      \draw (-1,0.2) -- (-0.25,0.5);
    \end{scope}
  \end{tikzpicture}}

\newcommand{\threeguides}{%
  \begin{tikzpicture}
    \draw (-1,1) -- (-1,1);
      \draw (-1,0.75) -- (-0.25,0.75);
      \draw (-1,0.225) -- (-0.25,0.75);
      \draw (-1,0.175) -- (-0.25,-0.35);
      \draw (-1,-0.35) -- (-0.25,-0.35);
    \begin{scope}[color=red]
      \draw (-1,0.70) -- (-0.25,0.2);
      \draw (-1,-0.30) -- (-0.25,0.2);
    \end{scope}
  \end{tikzpicture}}

\newcommand{\fourguides}{%
  \begin{tikzpicture}
    \draw (-1,0.7) -- (-1,0.7);
    \begin{scope}[color=red]
      \draw (-1,0.5) -- (-0.25,0);
      \draw (-1,-0.5) -- (-0.25,-0);
    \end{scope}
  \end{tikzpicture}}


%%
%% Side notes/tables/figures
%%

\RequirePackage{footnote}
\makesavenoteenv{table}
\makesavenoteenv{tabular}
\renewcommand*{\thefootnote}{\alph{footnote}}

\RequirePackage{marginnote}
\makeatletter
\let\oldmarginnote\marginnote
\renewcommand*{\marginnote}[2][0pt]{%
   \begingroup%
   \strictpagechecktrue
   \checkoddpage
   \ifoddpage%
     %
   \else%
     \reversemarginpar%
   \fi%
   \oldmarginnote{#2}[#1]%
   \endgroup%
}
\makeatother

% The mark on the sidenote
\newcommand{\sidemark}[1]{\textsuperscript{#1}{\:}}

% \RequirePackage{mparhack}
\newcommand{\marginelement}[2][0]{%
  \marginnote{%
    \strictpagechecktrue
    \checkoddpage
    \ifoddpage%
      \RaggedLeft\footnotesize%
    \else%
      \RaggedRight\footnotesize%
    \fi%
    #2%
  }[#1\onelineskip]%
}%

\RequirePackage[symbol]{footmisc}
\newcounter{mparcnt}
\renewcommand\themparcnt{\fnsymbol{mparcnt}}
\newcommand\sidenote[2][0pt]{\refstepcounter{mparcnt}\textsuperscript{\themparcnt}\marginpar{\vspace{#1}\scriptsize\linespread{1.05}\textsuperscript{\themparcnt}#2}}
\makeatletter
\@addtoreset{mparcnt}{chapter}
\makeatother

\newcommand\published[2][0pt]{\marginpar{\vspace{#1}\RaggedRight\scriptsize\textcolor{gray}{#2}}}

% Sidetable (have to use marginpar since tabular doesn't work with marginnote)
\newcommand{\sidetable}[3][]{%
  \marginpar{%
    \strictpagechecktrue
    \checkoddpage
    \ifoddpage%
      \captionsetup[table]{font={footnotesize,rm},%
                           justification=RaggedRight,%
                           singlelinecheck=false}
      \RaggedRight\footnotesize%
    \else
      \captionsetup[table]{font={footnotesize,rm},%
                           justification=RaggedLeft,%
                           singlelinecheck=false}
      \RaggedLeft\footnotesize%
    \fi
    #3
    \captionof{table}[#1]{#2}
  }
}

% Sidefigure
\newcommand{\sidefigure}[4][]{%
  \marginpar{%
      \captionsetup[figure]{labelfont={footnotesize,rm,bf},font={footnotesize,rm},%,stretch=1.075},%
                            justification=RaggedRight,%
                            singlelinecheck=false}
    #4%
    \captionof{figure}[#1]{#2}\label{#3}
  }
}


%%
%% Environments
%%

% Full width quote environment
\renewenvironment{quote}{%
  \list{}{%
    \setlength{\topsep}{\baselineskip}
    \setlength{\partopsep}{0pt}
    \setlength{\itemindent}{0pt}
    \setlength{\listparindent}{0pt}
    \setlength{\leftmargin}{0pt}
  }%
  \itshape\item[]
}{\endlist}

\newlength{\wholemargin}\setlength{\wholemargin}{\marginparwidth}
\addtolength{\wholemargin}{\marginparpush}
\newlength{\wholewidth}\setlength{\wholewidth}{\textwidth}
\addtolength{\wholewidth}{\wholemargin}

% Whole environment
\newenvironment{whole}{%
  \centering
  \strictpagechecktrue
  \begin{adjustwidth*}{-\wholemargin}{0em}
  \strictpagechecktrue
  \checkoddpage
  \ifoddpage%
    \raggedright
  \else%
    \raggedleft
  \fi%
}{%
  \end{adjustwidth*}
}

\newlength{\foreminusspine}\setlength{\foreminusspine}{\foremargin}
\addtolength{\foreminusspine}{-\spinemargin}

% Centered environment
\newenvironment{centered}{%
  \begin{adjustwidth*}{0em}{-\foreminusspine}
    \centering
}{%
  \end{adjustwidth*}
}


\newcommand{\codelist}[4]{%
  \noindent\textbf{\texttt{#1}}\vskip0.125em
  \noindent#2\vskip0.125em
  \noindent\textit{#3}\vskip0.125em
  \noindent\textsf{#4}\vskip1.25em%
}

%%
%% Citations
%%

\RequirePackage{marginfix}
\RequirePackage[hyperref=true,style=aiaa,giveninits=true,doi=true,isbn=true,
                url=true,backref,backrefstyle=none,maxcitenames=1,
                dateabbrev=false,urldate=long,labeldateparts]{biblatex}

\DeclareCiteCommand{\mciten} % only prints number and puts reference in margin
  {}
  {\printtext[bibhyperref]{\printfield{labelnumber}}%
   \usebibmacro{sidecite}}
  {}
  {}
\DeclareCiteCommand{\citen} % only prints number, but not in margin (useful for figures)
  {}
  {\printtext[bibhyperref]{\printfield{labelnumber}}}
  {}
  {}

\DeclareCiteCommand{\nocite} % only prints number and puts reference in margin
  {}
  {\usebibmacro{sidecite}}
  {}
  {}

\DeclareFieldFormat{sidecite}{\marginpar{\linespread{1.05}\scriptsize#1}}
\newbibmacro{sidecite}{%
  \printtext[sidecite]{%
    \RaggedRight%
    \printtext[bibhyperref]{\textcolor{MITred}{\printfield{labelnumber}.}}
    \textcolor{gray}{%
    \printnames{labelname}%
    \unspace, %
    \iffieldundef{doi}{%
      \iffieldundef{isbn}{%
        \iffieldundef{url}{%
          \ifentrytype{patent}{%
            \href{https://patents.google.com/patent/US\thefield{number}/en}{\printfield[citetitle]{labeltitle}}%
          }{%
            \printfield[citetitle]{labeltitle}%
          }%
        }{% if only url is available
          \href{https://\thefield{url}}{\printfield[citetitle]{labeltitle}}%
        }%
        %\printfield[citetitle]{labeltitle}%
      }{% if only url or isbn is available
        \href{https://books.google.com/books?vid=ISBN\thefield{isbn}}{\printfield[citetitle]{labeltitle}}%
      }%
    }%
    {%
      \href{https://dx.doi.org/\thefield{doi}}{\printfield[citetitle]{labeltitle}}%
    }%
    \setunit{\addperiod\space}%
    \printfield{year}%
    }%
    }%
  \setunit{}}

\makeatletter

\DeclareCiteCommand{\cbx@mcite}[\mkbibsuperscript]
  {\usebibmacro{cite:init}%
   \let\multicitedelim=\supercitedelim
   \iffieldundef{prenote}
     {}
     {\BibliographyWarning{Ignoring prenote argument}}%
   \iffieldundef{postnote}
     {}
     {\BibliographyWarning{Ignoring postnote argument}}%
   }
  {\usebibmacro{citeindex}%
   \usebibmacro{cite:comp}}
  {}
  {\usebibmacro{cite:dump}}

\DeclareCiteCommand{\mcite}[\cbx@mcite@init\cbx@mcite]
  {\gdef\cbx@savedkeys{}%
   \citetrackerfalse%
   \pagetrackerfalse%
   \DeferNextCitekeyHook%
   \usebibmacro{cite:init}%
   }
  {\xappto\cbx@savedkeys{\thefield{entrykey},}%
   \usebibmacro{sidecite}}
  {}
  {\protected@xappto\cbx@savedcites{{\cbx@savedkeys}}}

\newrobustcmd{\cbx@mcite@init}[2]{%
  \def\cbx@savedcites{#1}#2\cbx@savedcites\empty}

\DeclareCitePunctuationPosition{\mcite}{f} % cite like autocite
\makeatother

%%
%% Hyperlinks
%%

\RequirePackage[pdftex,plainpages=false,breaklinks=true]{hyperref}
\RequirePackage{cleveref}%  smart page, figure, table, and equation referencing
\RequirePackage[all]{hypcap} % Makes sure hyperref points to beginning of
                         % the float, not the caption
\RequirePackage{bookmark}
\hypersetup{bookmarksdepth=2}

% Use lining number in equation numbers
 \makeatletter
 \let\reftagform@=\tagform@
 \def\tagform@#1{\maketag@@@{(\ignorespaces{\myliningnumfont#1}\unskip\@@italiccorr)}}
 \renewcommand{\eqref}[1]{\textup{\reftagform@{\ref{#1}}}}
 \makeatother

 % Use lining number in table
 \setfloatadjustment{table}{\myliningnumfont}

% break also on hyphens inside the \url command
\def\UrlBreaks{\do\.\do\@\do\\\do\/\do\!\do\_\do\|\do\;\do\>\do\]%
  \do\)\do\,\do\?\do\'\do+\do\=\do\#\do-} % \do- is new!

% \urlstyle{sf}
\urlstyle{same}

\hypersetup{%
  colorlinks=false,%true,
  linkcolor=black,
  anchorcolor=black,
  citecolor=black,
  urlcolor=black,
  breaklinks,
  pdfborder=0 0 0,
}


%%
%% Reference shorthands.
%%

\crefname{equation}{Eq.}{Equations}
\Crefname{equation}{Eq.}{Equations}
\crefname{figure}{Figure}{Figures}
\Crefname{figure}{Figure}{Figures}
\crefname{table}{Table}{Tables}
\Crefname{table}{Table}{Tables}
\crefname{chapter}{Chapter}{Chapters}
\Crefname{chapter}{Chapter}{Chapters}
\crefname{appendix}{Appendix}{Appendices}
\Crefname{appendix}{Appendix}{Appendices}
\crefname{section}{Section}{Sections}
\Crefname{section}{Section}{Sections}
\crefname{algorithm}{Algorithm}{Algorithms}
\Crefname{algorithm}{Algorithm}{Algorithms}
\crefname{appchap}{Appendix}{Appendices}
\Crefname{appchap}{Appendix}{Appendices}

%%%
%% Index (2)
%%%
\RequirePackage[toc,nomain,acronym,smallcaps]{glossaries} % List of acronyms and glossary
\renewcommand*{\glsnamefont}[1]{\textup{#1}}

\RequirePackage{makeidx}

\makeglossaries
\makeindex

%%
%% Declerative formatting
%%

% Abbreviations (mostly acronyms, but all full caps abbreviations)
\let\abbr\lowercaps

% Titlepage
\RequirePackage{pdfpages}
\newlength\frontwidth\frontwidth=6in%
\renewcommand{\maketitle}{%

  \begin{titlingpage*}

  \begin{tikzpicture}[remember picture,overlay]

    \node[at=(current page.north),anchor=north,yshift=-0.75in]{\draftstring{}};

    % Title
    \node[at=(current page.north west),anchor=north west,xshift=1.25in,yshift=-1.3in,text width=\wholewidth]{
    \begin{minipage}{\wholewidth}
      {%
      {\LARGE Very long title of  \vskip5pt%
      some interesting thesis} \vspace{1pc} }\\
      by \vspace{1pc} \\
      {\Large John Doe } \vspace{0.5pc} \\
      \begin{tabular}{@{}lll@{}}
      S.B. & Aeronautics and Astronautics & Massachusetts Institute of Technology (1920) \\%\vspace{0.25pc}\\
      S.M. & Aeronautics and Astronautics & Massachusetts Institute of Technology (1980) \\
      \end{tabular}
    \end{minipage}
    };

    % Fulfillments
    \node[at=(current page.west),anchor=west,xshift=1.25in,yshift=1.2in,text width=\frontwidth]{
    \begin{minipage}{\linewidth}
      Submitted to the Department of Aeronautics and Astronautics\\ in partial fulfillment of the requirements for the degree of \vspace{0.5pc} \\
      {\large Doctor of Philosophy} \vspace{0.75pc} \\
      at the \vspace{0.75pc} \\
      {\large Massachusetts Institute of Technology} \vspace{0.75pc} \\
      {\large September 2025} \vspace{0.75pc}\\
      {\textcopyright\ Massachusetts Institute of Technology 2025. All rights reserved.}
    \end{minipage}
    };

    % Signatures
    \node[at=(current page.south west),anchor=south west,xshift=1.25in,yshift=1in,text width=\frontwidth]{%
    \begin{minipage}{\linewidth}
      \textsl{Author} \\
      John Doe  \hfill \rule{0.3\textwidth}{.2pt} \\
      Department of Aeronautics and Astronautics \\
      August 23, 2025 \vspace{0.6pc}\\
      \textsl{Certified by} \\
      Professor 1 \hfill \rule{0.3\textwidth}{.2pt}\\
      Professor of Aeronautics and Astronautics \\
      Thesis Supervisor \vspace{0.6pc}\\
      \textsl{Certified by} \\
      Professor 2 \hfill \rule{0.3\textwidth}{.2pt} \\
      Associate Professor of Aeronautics and Astronautics \\
      Thesis Supervisor \vspace{0.6pc}\\
      \textsl{Certified by} \\
      Professor 3 \hfill \rule{0.3\textwidth}{.2pt}\\
      Professor of Aeronautics and Astronautics \\
      Thesis Committee Member \vspace{0.6pc}\\
      \textsl{Accepted by} \\
      Professor 4  \hfill \rule{0.3\textwidth}{.2pt} \\
      Associate Professor of Aeronautics and Astronautics \\
      Chair, Graduate Program Committee%\\
    \end{minipage}%
    };

  \end{tikzpicture}

 \cleardoublepage

  \end{titlingpage*}
}

\newcommand{\printabstract}[1]%
{%
  \phantomsection%
  \thispagestyle{plain}%
  \addcontentsline{toc}{chapter}{Abstract}
  \noindent%
      {\RaggedRight%
      \null\vspace{3pc}

      {\Large{\color{title}Very long title} \textit{of} }  \vspace{0.75pc}\\

      %{\Large\textit{and}} \vspace{0.75pc} \\

      {\Large{\color{title} some} \textit{very} } \vspace{0.75pc} \\

      %{\Large} \vspace{0.75pc} \\

      {\Large\color{title} interesting thesis} \vspace{1pc} \\

      \noindent by \vspace{1pc} \\

      {\large John Doe}\vspace{1pc} \\

      Submitted to the Department of \\
      Aeronautics and Astronautics on \mbox{August 23, 2025,} \\
      in Partial Fulfillment of the Requirements for the Degree of \\
      Doctor of Philosophy in Aerospace Computational Engineering\\
      }%
      \vspace{1.5pc}
      %
      {\large \noindent \lowercaps{Abstract}} \vspace{0.25pc} \\
      %
      {\noindent \input{#1}}
      \vspace{1pc}

      \noindent\textsl{Thesis Supervisor:}\\
      Professor 1 \\
      Professor of Aeronautics and Astronautics \vspace{0.5pc} \\
      \noindent\textsl{Thesis Supervisor:}\\
      Professor 2 \\
      Associate Professor of Aeronautics and Astronautics

  %\end{minipage}
  \clearpage%
}
