%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% modifié le 16/04/2008 par L. Grossard grossard@unilim.fr %
%Version actualisée et en usage du template des Projets de Fin de Formation à l'IFRI, réalisée par ZOHOU Pierre Jérôme le 02/03/2020%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ifri}[6/6/2013 custom CV class]
\LoadClass[a4paper,11pt,oneside]{report}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  chargement des paquetages     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage[T1]{fontenc}

\usepackage[utf8]{inputenc}
\usepackage[french, english]{babel}
\usepackage[usenames,dvipsnames,svgnames,table]{xcolor} % les couleurs avec les divers modes d'appels
\usepackage{setspace}
\usepackage[]{graphicx} % pour insérer des images
\usepackage{amsmath}
\usepackage{amsfonts}
\usepackage{siunitx}
\usepackage{mathcomp} % pour avoir le mu droit  $\tcmu$
\usepackage{multirow}
\usepackage{geometry} % pour la mise en page: marge haut, bas, droit et gauche.
\usepackage[Lenny]{fncychap} %personnaliser le titre des chapitres
\usepackage{palatino} % choix de la police
\usepackage{float} % obliger l'image a rester la ou je veux
\usepackage{pdfpages} % inclure les pages pdf d'un autre document
\usepackage[hyphens]{url}
    \def\UrlBreaks{\do\.\do\@\do\\\do\/\do\!\do\_\do\|\do\;\do\>%
\do\]\do\)\do\,\do\?\do\'\do+\do\=\do\#\do\a\do\b\do\c\do\d\do\e\do\f\do\g\do\h\do\i\do\j\do\k\do\l\do\m\do\n\do\o\do\p\do\q\do\r\do\s\do\t\do\u\do\v\do\w\do\x\do\y\do\z%
\do\A\do\B\do\C\do\D\do\E\do\F\do\G\do\H\do\I\do\J\do\K\do\L\do\M\do\N\do\O\do\P\do\Q\do\R\do\S\do\T\do\U\do\V\do\W\do\X\do\Y\do\Z%
\do\1\do\2\do\3\do\4\do\5\do\6\do\7\do\8\do\9\do\%\do\=}%
%\usepackage{color} % les couleurs avec les divers modes d'appels
% activer tous les liens
\usepackage[ 
            colorlinks=true,%activer la coloration des liens 
            linkcolor=RoyalBlue,% personaliser la couleur des liens simple
            ]{hyperref}

%\usepackage[nonumberlist, acronym, toc]{glossaries} %Mise en forme du glossaire
\usepackage[acronym, toc]{glossaries} %Mise en forme du glossaire
%\usepackage[nonumberlist,style=altlist]{glossaries}
% \renewcommand*{\glsgroupskip}{}
% \renewcommand*{\glsseeformat}[3][\seename]{%
% (\xmakefirstuc{#1} \glsseelist{#2}.)}
 
\usepackage{fancyhdr}
\usepackage{lastpage} % la dernière page
\usepackage{titlesec} % modifification des titres
\usepackage[strict]{changepage} % ajustement automatique de la largeur des frame
\usepackage{framed} % pour definir nos propres frames
\usepackage{listings} % listing de code
\usepackage{listingsutf8} % listing utf8
\usepackage{caption}
\usepackage[francais]{minitoc} % mini table des matières
\usepackage{pifont}
\usepackage{pdflscape} % mettre certaines page en paysage
\usepackage{courier} % pour les listings


% les couleurs du code
\definecolor{javared}{rgb}{0.6,0,0} % for strings
\definecolor{javagreen}{rgb}{0.25,0.5,0.35} % comments
\definecolor{javapurple}{rgb}{0.5,0,0.35} % keywords
\definecolor{javadocblue}{rgb}{0.25,0.35,0.75} % javadoc
\definecolor{lbcolor}{rgb}{0.9,0.9,0.9}  
\lstset{
%language=Java,
basicstyle=\ttfamily,
basicstyle=\scriptsize,
upquote=true,
numbers=left,
numberstyle=\tiny\color{black},
stepnumber=1,
numbersep=5pt,
tabsize=2,
showspaces=false,
showstringspaces=false,
extendedchars=true,
backgroundcolor=\color{lbcolor}, 
literate={á}{{\'a}}1 {ã}{{\~a}}1 {é}{{\'e}}1,
frame=leftline
}

\lstdefinestyle{Shell}{delim=[il][\bfseries]{BB}}

\definecolor{gris}{rgb}{68,68,68}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{lgray}{gray}{0.97} % page de garde
\definecolor{bookColor}{cmyk}{0 , 0  , 0   , 0.98}  % 0.90\% of black
\usepackage{multirow} % pour les rowspan des tableaux
\usepackage{longtable} % tableaux sur plusieurs pages
%\usepackage[chapter]{algorithm}
%\usepackage[french]{algorithm2e}
\usepackage{tocbibind}

\usepackage[french,linesnumbered,lined,boxed,commentsnumbered,ruled]{algorithm2e}
\usepackage{algpseudocode} % algorithmic
%\usepackage{algorithmic}

%\usepackage{auto-pst-pdf} 
\usepackage{pstricks,pst-node,pst-tree}

%%%%%%%%%% personnalisation des algos

%\floatname{algorithm}{Algorithme}
% changement du style des commentaires
%\renewcommand{\algorithmiccomment}[1]{// #1}
%\let\mylistof\listof
%\renewcommand\listof[2]{\mylistof{algorithm}{\textbf{Liste des algorithmes}}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Definition des variables %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\titreDuMemoire}[1]{\newcommand{\@titreDuMemoire}{#1}}
\newcommand{\typeMemoire}[1]{\newcommand{\@typeMemoire}{#1}}
\newcommand{\etudiant}[1]{\newcommand{\@etudiant}{#1}}
\newcommand{\encadrants}[1]{\newcommand{\@encadrants}{#1}}
\newcommand{\jurys}[1]{\newcommand{\@jurys}{#1}}
\newcommand{\dateSoutenance}[1]{\newcommand{\@dateSoutenance}{#1}}
\newcommand{\optionFormation}[1]{\newcommand{\@optionFormation}{#1}}
\newcommand{\anneeScolaire}[1]{\newcommand{\@anneeScolaire}{#1}}
\newcommand{\titre}[1]{\newcommand{\@titre}{#1}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Mise en page
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\geometry{tmargin=2cm,bmargin=2cm,lmargin=2cm,rmargin=2cm}
\setlength\headheight{15pt}
\renewcommand{\baselinestretch}{1.2} % espace entre les lignes
\pagestyle{headings}


\renewcommand{\listfigurename}{Liste des figures}
\renewcommand{\listtablename}{Liste des tableaux}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Le bloc monBloc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\definecolor{fondBleu}{rgb}{0.95,0.95,1}

\newenvironment{formal}{%
  \def\FrameCommand{%
    \hspace{1pt}%
    {\color{black}\vrule width 2pt}%
    {\color{lgray}\vrule width 4pt}%
    \colorbox{lgray}%
  }%
  \MakeFramed{\advance\hsize-\width\FrameRestore}%
  %\noindent\hspace{-4.55pt}% desactiver l'identation
  %\noindent
  \begin{adjustwidth}{}{7pt}%
  \vspace{0pt}\vspace{0pt}%
}
{%
  \vspace{2pt}\end{adjustwidth}\endMakeFramed%
}


\newcommand{\monBloc}[1]{
\begin{formal}
\emph{{#1}}
\end{formal}
}	


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% commande epigraphe
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\epigraphe}[3]{
    \begin{formal}
	\ding{125}    
    {\itshape #1}
    \ding{126}
    \end{formal}
    {\raggedleft \textsc{#2} #3\par}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% modification de la numerotation %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% niveau de hirarchie  3
\setcounter{secnumdepth}{3}	% permet de numroter 4 niveaux
\setcounter{tocdepth}{2}	% et en affiche 2 dans la toc

% saut de page aprs le titre du chapitre
\def\chapitre#1{\chapter{#1}\newpage}
% compteur de partie sous la forme A, B, ...
%\renewcommand\thepart{\Alph{part}}
% compteur de chapitre sous la forme 1), 2) ...
%\renewcommand{\thechapter}{\arabic{chapter}}
% compteur de section sous la forme I, II, ...
%\renewcommand{\thesection}{\Roman{section}}
% compteur de section sous la forme I, II...
%\renewcommand{\thesection}{\Roman{section}}
% compteur de sous-section sous la forme 1), 2)...
%\renewcommand{\thesubsection}{\arabic{subsection})}
% compteur de sous-sous-section sous la forme 1), 2)...
%\renewcommand{\thesubsubsection}{\arabic{subsubsection})}
%differente pagination pour les tableaux
%\renewcommand{\thetable}{\arabic{chapter}.\arabic{table}}
%différente pagination pour les figures
%\renewcommand{\thefigure}{\arabic{chapter}.\arabic{figure}}
%différente pagination la table des matières
%\renewcommand{\glsaddall}{\arabic{chapter}.\arabic{glossary}}

\newcommand\dedicace{\chapter*{Dédicace}\addcontentsline{toc}{chapter}{Dédicace}}
\newcommand\remerciements{\chapter*{Remerciements}\addcontentsline{toc}{chapter}{Remerciements}}
\newcommand\introduction{\chapter*{Introduction Générale}\addcontentsline{toc}{chapter}{Introduction}}
\newcommand\conclusion{\chapter*{Conclusion Générale}\addcontentsline{toc}{chapter}{Conclusion}}
\newcommand\resume{\chapter*{}\addcontentsline{toc}{chapter}{Résumé}}
\newcommand\annexe{\chapter*{}\addcontentsline{toc}{chapter}{Annexes}}

%\renewcommand\glsaddall{\chapter*{Glossaire}\addcontentsline{toc}{chapter}{Glossaire}}

%\newcommand\resume{\subsubsection*{}\addcontentsline{toc}{chapter}{Résumé / Abstract}}

\renewcommand\printglossaries{\chapter*{Glossaire}\addcontentsline{toc}{chapter}{Glossaire}}

%\renewcommand\printsigles{\chapter*{Sigles et Abréviations}\addcontentsline{toc}{chapter}{Sigles et Abréviations}}


\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}

%\fancyfoot[R]{\thepage / \pageref{LastPage}}
\fancyfoot[C]{\thepage}
\fancyhead[L]{\tiny \leftmark}
\fancyhead[R]{\scriptsize \rightmark}

% french and english abstract on same page
% http://www.latex-community.org/forum/viewtopic.php?f=44&t=13708


\if@titlepage
  \renewenvironment{abstract}{%
      %\null\vfil
      \@beginparpenalty\@lowpenalty
      \begin{center}%
        \Huge \abstractname
        \@endparpenalty\@M
      \end{center}\fancyhf{}}%
     {
     %\par\vfil\null
     }
\fi


% \newglossarystyle{clong}{%
%  \renewenvironment{theglossary}%
%      {\begin{longtable}{p{.3\linewidth}p{\glsdescwidth}}}%
%      {\end{longtable}}%
%   \renewcommand*{\glossaryheader}{}%
%   \renewcommand*{\glsgroupheading}[1]{}%
%   \renewcommand*{\glossaryentryfield}[5]{%
%     \glstarget{##1}{##2} & ##3\glspostdescription\space ##5\\}%
%   \renewcommand*{\glossarysubentryfield}[6]{%
%      & \glstarget{##2}{\strut}##4\glspostdescription\space ##6\\}%
%   %\renewcommand*{\glsgroupskip}{ & \\}%
% }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% modification de la toc          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{tocloft}
%\renewcommand{\cftchapnumwidth}{\setlength{0.7cm}}
%\renewcommand{\cftsecnumwidth}{\setlength{0.7cm}}
%\renewcommand{\cftsubsecnumwidth}{\setlength{0.7cm}}
%\renewcommand{\cftsubsubsecnumwidth}{\setlength{0.7cm}}

%%%%%%%%% commenter les lignes suivantes pour avoir %%%%%%%%%%%%%%%
%%%%%%%%%       les hauts de page en majuscule      %%%%%%%%%%%%%%%

  \renewcommand{\sectionmark}[1]{\markright{\thesection.\ #1}}
  \renewcommand{\chaptermark}[1]{%
    \markboth{\if@mainmatter\@chapapp\ \thechapter. \fi\ #1}%
    {\if@mainmatter\@chapapp\ \thechapter. \fi\ #1}}

%surcharge des sections
\titleformat{\section}
{\normalfont\Large\bfseries}{\thesection}{0.5em}{}[\hspace{1ex}] %\titlerule par Ezin

% surcharge des titres des parties

\titleclass{\part}{page}
\titleformat{\part}[display]
  {\centering\normalfont\huge\bfseries}
  {\centering\normalfont\normalsize\scshape\partname\ \centering{\thepart}}
  {2ex}
  {\titlerule\vspace{1ex}}
  [\vspace{2ex}\titlerule]

{\newpage\renewcommand{\thepage}{\arabic{page}}\setcounter{page}{1}}


% enlever le point à la fin
\renewcommand*{\glspostdescription}{}
% mettre deux points apres les titres
\renewcommand{\glsnamefont}[1]{\textbf{#1 :  }}


%%%%%%%%%%%%%%%%%%%%%%%%%%ù
%% Références multiples au même footnote
%% http://www.pommegyver.be/2010/11/latex-references-multiples-au-meme-footnote/
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\footnoteremember}[2]{
\footnote{#2}
\newcounter{#1}
\setcounter{#1}{\value{footnote}}
}

\newcommand{\footnoterecall}[1]{
\footnotemark[\value{#1}]
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{nomencl}
\renewcommand{\nomname}{Sigles et abréviations}
\makenomenclature 
%\newcommand\resume{\chapter*{}\addcontentsline{toc}{chapter}{Résumé/Abstract}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% les éléments dz la page de garde%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\listofalgorithmes}{\tocfile{\listalgorithmcfname}{loa}}

\newcommand{\pageDeGarde}{
%\pagecolor{lgray}

\begin{titlepage}
\begin{center}
\begin{tabular}{c}
\textsf{{\scriptsize RÉPUBLIQUE DU BÉNIN}}
\end{tabular}
\end{center}

\vspace{-1.75cm}
\begin{flushleft}
\hspace{-0.5cm}
\begin{tabular}{p{3.5cm}}
\begin{flushright}
\includegraphics[scale=0.5]{images/logoUAC1.png}\\
\end{flushright}
\end{tabular}
\hfill
\begin{tabular}{p{8.5cm}}
\begin{center}
{\scriptsize \textsf{MINISTÈRE DE L'ENSEIGNEMENT SUPÉRIEUR \\ET DE LA RECHERCHE SCIENTIFIQUE}\\}
\vspace{0.25cm}
{\scriptsize \textbf{\textsf{UNIVERSITÉ D'ABOMEY-CALAVI}}\\}
\vspace{0.25cm}
{\footnotesize \textbf {\textsf{INSTITUT DE FORMATION ET DE\\ RECHERCHE EN INFORMATIQUE}\\}}
\vspace{0.25cm}
{\scriptsize BP 526 Cotonou Tel : +229 21 14 19 88\\}
\vspace{-0.25cm}
{\scriptsize \url{http://www.ifri-uac.net} Courriel : \href{mailto:contact@ifri.uac.bj}{contact@ifri.uac.bj}}
\end{center}
\end{tabular}
\hfill
\begin{tabular}{p{3.5cm}}
\begin{flushleft}
\includegraphics[scale=0.5]{images/logoIfri.png}
\end{flushleft}
\end{tabular}
\end{flushleft}
%\vfill
\begin{center}

{\textbf{{\Huge MÉMOIRE \\}}}
\vspace{0.5cm}
{\large pour l'obtention du\\}
\vspace{0.5cm}

{\large \bf \centering \@typeMemoire \\ }
\vspace{0.5cm}

{\large \centering \textbf{Option :} \@optionFormation \\ }
\vspace{0.5cm}

{ \textbf{Présenté par} : \\}
{\@etudiant{}}\\
\vspace{1cm}

%{\rule{\textwidth}{0.2mm}}\vspace{3mm} \\
{{\Huge {\bf \centering \@titreDuMemoire}}}\\
%{\rule{\textwidth}{0.2mm}}\\
\vspace{2cm}
{ \textbf{Sous la supervision } : \\}
{ \@encadrants{}}\\
\vspace{1cm}

{ \textbf{Membres du jury } : \\}
{ \@jurys{}}\\

\vfill
\end{center}

\begin{center}
{ Année Académique : \bf \@anneeScolaire }
\end{center}


\end{titlepage}
}
%Générer les index
\makeindex
%Activate glossary commands
\makeglossaries

\author{}
\date{}