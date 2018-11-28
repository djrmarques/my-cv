\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my-cv}

\LoadClass{article}

% Define the colors
\RequirePackage{xcolor}
\definecolor{rightcolor}{HTML}{44B3C2}
\definecolor{leftcolor}{HTML}{E45641}
\definecolor{titleblack}{HTML}{5D4C46}
\definecolor{starcolor}{HTML}{F1A94E}

% Array for tabular
\RequirePackage{array}

% Images
\RequirePackage{graphicx}

% Margins
\RequirePackage[a4paper, total={6in, 10in}]{geometry}

% Dashed Rule
\RequirePackage{dashrule}

  % STARS
\RequirePackage{tikz}
\usetikzlibrary{shapes.geometric}

\newcommand\score[1]{
\pgfmathsetmacro\pgfxa{#1+1}
\tikzstyle{scorestars}=[star, star points=5, star point ratio=2, draw,inner sep=1.3pt,anchor=outer point 3]
  \begin{tikzpicture}[baseline]
    \foreach \i in {1,...,5} {
        \pgfmathparse{(\i<=#1?"starcolor":"gray!40!white")}
        \edef\starcolor{\pgfmathresult}
        \draw (\i*1.75ex,0) node[name=star\i,scorestars,fill=\starcolor]  {};
   }
  \end{tikzpicture}
}

% Title sec package
\RequirePackage{titlesec}
\titleformat{\section}         % Customise the \section command 
  {\Large\scshape\color{rightcolor}\bfseries\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\titlerule]   

% Some symbols
\RequirePackage{marvosym}

% Author Macros
\RequirePackage{titling}

 % Define Layout Environment
\newcommand{\topinfo}{
  \begin{center}
  {\Huge \bfseries \color{titleblack} \theauthor}\\
  {\Large \bfseries \color{gray} Mechanical Engineer}
  \end{center}
  }

  % Environment for like Education and Hobbies and wtv
  \newenvironment{cvpart}[1]{
    \section{#1}
    \newcommand{\experience}[2]{\textbf{##1} \dotfill ##2}
    }
  
  % Personal Info
  \newcommand{\phone}[1]{\Mobilefone: #1\\}
  \newcommand{\email}[1]{\Email: #1}

  \newenvironment{skills}[1]{
    \vspace{5mm}
    {\hspace{-5mm}\vspace{1mm}\Large\color{leftcolor}\bfseries#1}

    \newcommand{\skillentry}[2]{
      \begin{tabular}{m{.5\linewidth}l}
       $\bullet$ \textbf{##1} &  \score{##2}
      \end{tabular}
    }
  }


