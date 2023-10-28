%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% jsmepaper.cls v2.1 (2010.10.06)                                            %%
%%                                                                            %%
%% このバージョンは、jsmepaper.cls,v 1.4を１段組用に変更したものです。        %%
%%                                                                            %%
%% 前バージョンのコメントはすべてオリジナルのまま残してあります。             %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% jsmepaper.cls
%
% $Id: jsmepaper.cls,v 1.4 2001/10/10 15:55:20 ken Exp $
%
\NeedsTeXFormat{pLaTeX2e}
\ProvidesClass{jsmepaper}
   [1999/11/05 v1.54 Standard JSME Paper Class for pLateX2e]
%
% Adding the following customizations by Kikuo Fujita, Osaka University: 
% ・ Add command to use PSNFSS packages.
% ・ Add semilarge size font to slightly shrink of font of section.
% ・ Add small indentation of each items in the description environment.
% ・ Rectify section, subsection and subsubsection format according
%    Manuscript of J.S.M.E.
% ・ Change line length of just above footnotes on first page.
% ・ Change to be located all floating figures and tables in top of page
%    and increase limitation of the number of figures up to 4.
% ・ suppress hyphenation of english word.
%
% If you don't have PSNFSS system, comment out the following three
% lines [customized by Kikuo Fujita, Osaka University]: 
\RequirePackage{times}      % Loads the Times-Roman Fonts
\RequirePackage{mathptmx}    % Loads the Times-Roman Math Fonts
%\RequirePackage{pifont}     % Loads the Postscript symbol fonts

\newif\iflatexe\latexetrue
%
\input jsmefont.sty\relax
\newcounter{@paper}
\newif\if@landscape \@landscapefalse
\newcommand{\@ptsize}{0}
\newif\if@restonecol
\newif\if@titlepage
\@titlepagefalse
\hour\time \divide\hour by 60\relax
\@tempcnta\hour \multiply\@tempcnta 60\relax
\minute\time \advance\minute-\@tempcnta
\newif\if@stysize \@stysizefalse
\newif\if@enablejfam \@enablejfamtrue
\DeclareOption{a4jsme}{\setcounter{@paper}{1}%
  \setlength\paperheight {297mm}%
  \setlength\paperwidth  {210mm}}
\DeclareOption{a5jsme}{\setcounter{@paper}{2}%
  \setlength\paperheight {210mm}
  \setlength\paperwidth  {148mm}}
\DeclareOption{b4jsme}{\setcounter{@paper}{3}%
  \setlength\paperheight {364mm}
  \setlength\paperwidth  {257mm}}
\DeclareOption{b5jsme}{\setcounter{@paper}{4}%
  \setlength\paperheight {257mm}
  \setlength\paperwidth  {182mm}}
\DeclareOption{a4journal}{\setcounter{@paper}{5}%
  \setlength\paperheight {297mm}%
  \setlength\paperwidth  {210mm}}
\if@compatibility
  \renewcommand{\@ptsize}{0}
\else
  \DeclareOption{10pt}{\renewcommand{\@ptsize}{0}}
\fi
\DeclareOption{11pt}{\renewcommand{\@ptsize}{1}}
\DeclareOption{12pt}{\renewcommand{\@ptsize}{2}}
\DeclareOption{fleqn}{\input{fleqn.clo}}

\def\ds@twoside{\@twosidetrue\@mparswitchtrue}\def\ds@draft{\overfullrule 5pt} 
\@options
\input{jsize1\@ptsize.clo}
\input{jsme1\@ptsize.sty}\relax
\ifnum\c@@paper=2 % A5
  \input a4jsme.sty\relax
\else\ifnum\c@@paper=3 % B4
  \input b4jsme.sty\relax
\else\ifnum\c@@paper=4 % B5
  \input b5jsme.sty\relax
\else\ifnum\c@@paper=5 % Journal Articles
  \input a4journal.sty\relax
\else             % A4 ant other
  \input a4jsme.sty\relax
\fi\fi\fi\fi
\def\labelenumi{\theenumi.} 
\def\theenumi{\arabic{enumi}} 
\def\labelenumii{(\theenumii)}
\def\theenumii{\alph{enumii}}
\def\p@enumii{\theenumi}
\def\labelenumiii{\theenumiii.}
\def\theenumiii{\roman{enumiii}}
\def\p@enumiii{\theenumi(\theenumii)}
\def\labelenumiv{\theenumiv.}
\def\theenumiv{\Alph{enumiv}} 
\def\p@enumiv{\p@enumiii\theenumiii}

\def\labelitemi{$\bullet$}
\def\labelitemii{\bf --}
\def\labelitemiii{$\ast$}
\def\labelitemiv{$\cdot$}

\def\verse{\let\\=\@centercr 
  \list{}{\itemsep\z@ \itemindent -1.5em\listparindent \itemindent 
  \rightmargin\leftmargin\advance\leftmargin 1.5em}\item[]}
\let\endverse\endlist
\def\quotation{\list{}{\listparindent 1.5em
  \itemindent\listparindent
  \rightmargin\leftmargin \parsep 0pt plus 1pt}\item[]}
\let\endquotation=\endlist
\def\quote{\list{}{\rightmargin\leftmargin}\item[]}
\let\endquote=\endlist

% '\bf' is replaced to '\normalfont\bfseries', and '\labelsep = 15pt'
% is added to insert a small indent for description items. [customized
% by Kikuo Fujita, Osaka University]: 
%
\def\descriptionlabel#1{\labelsep = 15pt \hspace\labelsep \normalfont\bfseries #1}
% \def\descriptionlabel#1{\hspace\labelsep \bf #1}
\def\description{\list{}{\labelwidth\z@ \itemindent-\leftmargin
  \let\makelabel\descriptionlabel}}
\let\enddescription\endlist

\newcommand{\up}{\upshape}
\newcommand{\it}{\itshape}
\newcommand{\sl}{\slshape}
\newcommand{\sc}{\scshape}
\newcommand{\md}{\mdseries}
\newcommand{\bf}{\bfseries}
\newcommand{\tt}{\ttfamily}
\newcommand{\sf}{\sffamily}
\newcommand{\rm}{\rmfamily}
\newcommand{\mc}{\mcfamily}
\newcommand{\gt}{\gtfamily}
\newcommand{\bfs}{\bfseries\slshape}
\newcommand{\bfi}{\font\bfif=cmbxti10\bfif}
\newcommand{\bsf}{\font\bfsff=cmssdc10\bfsff}
\newcommand{\msf}{\font\bmsff=cmssbx10\bmsff}
\newcommand{\ssf}{\font\ssff=cmssi10\ssff}

\setlength{\mathindent}{1zw}
\renewcommand{\theequation}{\arabic{equation}}

\newenvironment{titlepage}{%
  \@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
  \else \newpage \fi \thispagestyle{empty}\c@page\z@}
  {\if@restonecol\twocolumn \else \newpage \fi}

\arraycolsep 5pt \tabcolsep 6pt \arrayrulewidth .4pt \doublerulesep 2pt 
\tabbingsep \labelsep 

\skip\@mpfootins = \skip\footins
\fboxsep = 3pt \fboxrule = .4pt 

\newcounter{part}
\newcounter{section}
\newcounter{subsection}[section]
\newcounter{subsubsection}[subsection]
\newcounter{paragraph}[subsubsection]
\newcounter{subparagraph}[paragraph]

\def\thepart{\Roman{part}} \def\thesection {\arabic{section}}
\def\thesubsection{\thesection$\cdot$\arabic{subsection}}
\def\thesubsubsection {\thesubsection$\cdot$\arabic{subsubsection}}
\def\theparagraph {\thesubsubsection.\arabic{paragraph}}
\def\thesubparagraph {\theparagraph.\arabic{subparagraph}}

\def\@pnumwidth{1.55em}
\def\@tocrmarg {2.55em}
\def\@dotsep{4.5}
\setcounter{tocdepth}{3}
%
% difinition of Language
%
\newif\ifjapan
\def\japan{\global\japantrue}
\def\english{\global\japanfalse}
\def\@chapapp#1{\ifjapan 第#1\else Chapter #1\fi}
\def\appendix{\par\setcounter{chapter}{0}\setcounter{section}{0}
 \ifjapan\def\@chapapp{付録}\else\def\@chapapp{Appendix}\fi%
 \def\thechapter{\Alph{chapter}}}
\newcommand{\prepartname}{\ifjapan 第\else Part.\fi}
\newcommand{\postpartname}{\ifjapan 部\fi}
\newcommand{\contentsname}{\ifjapan 目次\else Contents\fi}
\newcommand{\listfigurename}{\ifjapan 図目次\else List of Figures\fi}
\newcommand{\listtablename}{\ifjapan 表目次\else List of Tables\fi}
\newcommand{\refname}{\ifjapan 文献\else References\fi}
\newcommand{\indexname}{\ifjapan 索 引\else Index\fi}
\newcommand{\figurename}{\ifjapan 図\else Fig.\fi}
\newcommand{\tablename}{\ifjapan 表\else Table\fi}
\newcommand{\appendixname}{\ifjapan 付録\else Appendix\fi}
\newcommand{\abstractname}{\ifjapan 概要\else Abstract\fi}
%
\newdimen\@lnumwidth
\def\numberline#1{\hbox to\@lnumwidth{#1\hfil}}
\def\tableofcontents{\section*{\contentsname}%
  \markboth{\contentsname}{\contentsname}\@starttoc{toc}}
\def\@seccntformat#1{\csname the#1\endcsname}
\def\l@part#1#2{\addpenalty{\@secpenalty}
  \addvspace{2.25em plus 1pt} \begingroup
  \@tempdima 3em \parindent \z@ \rightskip \@pnumwidth
  \parfillskip -\@pnumwidth 
  {\large \bfseries \leavevmode #1\hfil \hbox to\@pnumwidth{\hss #2}}\par
  \nobreak \endgroup}
%
% 2000.01.11 Refixed by Ken Kishimoto;
% 1999.12.15 '\section,' etc are replaced by Kikuo Fujita, Osaka University:   
%
%\newcommand{\section}{\secdef\@section\@ssection}%
\newcommand{\section}{\@ifstar{\@ssection}{\@section}}%
\newcommand{\@section}[1]{\@startsection{section}{1}{\z@}%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% １段組用に変更ここから %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   {0.0\Cvs \@plus.5\Cdp \@minus.2\Cdp}%
   {\Cvs}%
   {.35\Cvs \@plus.3\Cdp}%
   {\reset@font\normalsize\center\bfseries}
   {\protect\normalsize{.}\leavevmode\setbox\@tempboxa\hbox{#1}%
    \hspace*{1.2ex}\protect\@spsection{{\normalsize#1}}}}
\newcommand{\@ssection}[1]{\@startsection{section}{10}{\z@}%
   {0.0\Cvs \@plus.5\Cdp \@minus.2\Cdp}%
   {.35\Cvs \@plus.3\Cdp}%
   {\reset@font\semilarge\center\bfseries}
   {\leavevmode\setbox\@tempboxa\hbox{#1}%
    \hspace*{-2pt}\protect\@spsection{{\normalsize#1}}}}
% \newcommand{\@spsection}[1]{% %%%%% (少ない文字は等間隔空け) %%%%%
%     \setbox\@tempboxa\hbox{\begin{tabular}{@{}c@{}}#1\end{tabular}}
%     \ifdim\wd\@tempboxa>9zw#1\else
%     \ifdim\wd\@tempboxa>3zw\makebox[8zw][s]{#1}\else\makebox[5zw][s]{#1}\fi\fi}
\newcommand{\@spsection}[1]{%
    % PDFのしおりに適切なテキストを設定します。
    \texorpdfstring{%
        % 以下はPDFの中身にのみ影響します。
        \setbox\@tempboxa\hbox{\centering#1}
        \ifdim\wd\@tempboxa>9zw#1\else
        \ifdim\wd\@tempboxa>3zw\makebox[8zw][s]{#1}\else\makebox[5zw][s]{#1}\fi\fi
    }{%
        #1 % ここには、PDFのしおりに表示したいプレーンテキストを設定します。
    }
}
\newcommand{\subsection}[1]{\@startsection{subsection}{2}{\z@}%
%   {0.0\Cvs \@plus.5\Cdp \@minus.2\Cdp}%
   {\Cvs}%
   {.01\Cvs \@plus.3\Cdp}%
   {\hspace*{0.1ex}\reset@font\normalsize\bfseries}
   {\protect\@ifstar{#1}{\hspace*{1.4ex} #1}}}
\newcommand{\subsubsection}[1]{\@startsection{subsubsection}{3}{\z@}%
   {0.0\Cvs \@plus.5\Cdp \@minus.2\Cdp}%
   {.01\Cvs \@plus.3\Cdp}%
   {\hspace*{0.1ex}\reset@font\normalsize\bfseries}
   {\protect\@ifstar{#1}{\hspace*{1.4ex} #1}}}
% 08 July, 2001 Ken Kishimoto
% shorten space between = in eqnarray environment
\setlength\arraycolsep{1\p@}
%
\def\l@subsection{\@dottedtocline{2}{1.5em}{2.3em}}
\def\l@subsubsection{\@dottedtocline{3}{3.8em}{3.2em}}
\def\l@paragraph{\@dottedtocline{4}{7.0em}{4.1em}}
\def\l@subparagraph{\@dottedtocline{5}{10em}{5em}}
\def\listoffigures{\section*{\listfigurename}\@starttoc{lof}}
\def\l@figure{\@dottedtocline{2}{1.5em}{2.3em}}
\def\listoftables{\section*{\listtablename}
	\@starttoc{lot}}
\let\l@table\l@figure
%
\newenvironment{theindex}
  {\if@twocolumn\@restonecolfalse\else\@restonecoltrue\fi
   \columnseprule\z@ \columnsep 35\p@
   \twocolumn[\section*{\indexname}]
   \@mkboth{\indexname}{\indexname}
   \thispagestyle{jpl@in}\parindent\z@
   \parskip\z@ \@plus .3\p@\relax
   \let\item\@idxitem}
  {\if@restonecol\onecolumn\else\clearpage\fi}
%
\newenvironment{thebibliography}[1] {\bigskip\par
 \parindent=0pt\hfil{\semilarge\bf\makebox[5zw][s]{{\normalsize\refname}}}
   \vskip 2ex\par
   \list{}{%
		\setlength{\baselineskip}{15pt}%
		\settowidth\labelwidth{\@biblabel{#1}}%
		\leftmargin2zw%
		\setlength{\labelwidth}{\z@}%
		\setlength{\labelsep}{\z@}%
		\setlength{\itemindent}{-2zw}%
		\setlength{\listparindent}{\z@}%
		\setlength{\itemsep}{\z@}%
		\setlength{\partopsep}{\z@}%
		\setlength{\topsep}{\z@}%
		\setlength{\parsep}{\z@}%
		\@openbib@code%
		\usecounter{enumiv}%
		\let\p@enumiv\@empty%
		\renewcommand\theenumiv{\@arabic\c@enumiv}%
	}
   \sloppy
   \clubpenalty4000
   \@clubpenalty\clubpenalty
   \widowpenalty4000%
   \sfcode`\.\@m}
  {\def\@noitemerr
    {\@latex@warning{Empty `thebibliography' environment}}%
   \endlist}
\let\@openbib@code\@empty
%
\newcommand{\@idxitem}{\par\hangindent 40\p@}
\newcommand{\subitem}{\@idxitem \hspace*{20\p@}}
\newcommand{\subsubitem}{\@idxitem \hspace*{30\p@}}
\newcommand{\indexspace}{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}
\renewcommand{\footnoterule}{%
  \kern-3\p@\hrule width \columnwidth\kern 5\p@}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% １段組用に変更ここまで %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\newcommand\@makefntext[1]{\parindent 1em
  \noindent\hbox to 0.5em{\hss\@makefnmark}#1}
\newif\if西暦 \西暦false
\def\西暦{\西暦true}
\def\和暦{\西暦false}
\newcount\heisei \heisei\year \advance\heisei-1988\relax
\def\today{{%
  \iftdir
    \if西暦
      \kansuji\number\year 年
      \kansuji\number\month 月
      \kansuji\number\day 日
    \else
      平成\ifnum\heisei=1 元年\else\kansuji\number\heisei 年\fi
      \kansuji\number\month 月
      \kansuji\number\day 日
    \fi
  \else
    \if西暦
      \number\year~年
      \number\month~月
      \number\day~日
    \else
      平成\ifnum\heisei=1 元年\else\number\heisei~年\fi
      \number\month~月
      \number\day~日
    \fi
  \fi}}

% The following variables are arranged from the originals to avoid a
% column only with figures & tables and to arrange the height between
% figures/tables and text [customized by Kikuo Fujita, Osaka University]: 
\setcounter{topnumber}{4}
\def\topfraction{1.0}
\setcounter{bottomnumber}{3}
\def\bottomfraction{0.0}
\setcounter{totalnumber}{5}
\def\textfraction{0.0}
\def\floatpagefraction{0.95}
\setcounter{dbltopnumber}{2}
\def\dbltopfraction{1.0}
\def\dblfloatpagefraction{0.95}
%\setlength{\intextsep}{1zw}
%\setlength{\textfloatsep}{1.3zw}
%\setlength{\dbltextfloatsep}{1.3zw}
%\setlength\floatsep    { 6\p@ \@plus 2\p@ \@minus 1\p@}
%\setlength\intextsep   { 6\p@ \@plus 2\p@ \@minus 1\p@}
\setlength{\intextsep}{\Cvs}
\setlength{\textfloatsep}{\Cvs}
\setlength{\dbltextfloatsep}{\Cvs}
\setlength\floatsep{\Cvs}

%\setcounter{topnumber}{2}
%\def\topfraction{.7}
%\setcounter{bottomnumber}{1}
%\def\bottomfraction{.3}
%\setcounter{totalnumber}{3}
%\def\textfraction{.2}
%\def\floatpagefraction{.5}
%\setcounter{dbltopnumber}{2}
%\def\dbltopfraction{1.0}
%\def\dblfloatpagefraction{.5}
%\setlength{\intextsep}{1zw}
%\setlength{\textfloatsep}{1zw}
%\setlength{\dbltextfloatsep}{1zw}

\newcounter{figure}
\def\thefigure{\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename\thefigure}
\def\figure{\@float{figure}}
\let\endfigure\end@float
\@namedef{figure*}{\@dblfloat{figure}}
\@namedef{endfigure*}{\end@dblfloat}
\newcounter{table}
\def\thetable{\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename\thetable}
\def\table{\@float{table}}
\let\endtable\end@float
\@namedef{table*}{\@dblfloat{table}}
\@namedef{endtable*}{\end@dblfloat}

\if@twoside
 \def\ps@headings{%
  \def\@oddfoot{}\def\@evenfoot{}
  \def\@oddhead{\@signif\hfil\underline{\protect\small\rightmark}\hfil\thepage}
  \def\@evenhead{\thepage\hfil\underline{\protect\small\leftmark}\hfil\@signif}
  \def\sectionmark##1{}\def\subsectionmark##1{}
 }
 \else \def\ps@headings{%
  \def\@oddfoot{}\def\@evenfoot{}
  \def\@oddhead{\@signif\hfil\underline{\protect\small\rightmark}\hfil\thepage}
  \def\@evenhead{\thepage\hfil\underline{\protect\small\leftmark}\hfil\@signif}
  \def\sectionmark##1{}\def\subsectionmark##1{}
}\fi
\def\ps@myheadings{\let\@mkboth\@gobbletwo
  \def\@oddhead{\@signf\sl\rightmark\hfil\rm\thepage}
  \def\@oddfoot{}\def\@evenhead{\rm \thepage\hfil\sl\leftmark\@signif}
  \def\@evenfoot{}\def\sectionmark##1{}\def\subsectionmark##1{}}

\ps@plain \pagenumbering{arabic}
%  twocolumn defined
\def\@ps@{1}
\def\@twoc{}
\onecolumn %%%%% １段組用に変更 %%%%%
\sloppy
\flushbottom
\if@twoside\else\raggedbottom\fi 
%
\input jsadd.sty\relax
% The next part is added for less hyphenation [customized by Kikuo
% Fujita, Osaka University]:
\pretolerance=9999	
%
\japan
\endinput
