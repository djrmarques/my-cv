\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my-cv}

\LoadClass{article}

% Define the colors
\RequirePackage{xcolor}
\definecolor{titleblack}{HTML}{273D5D}
\definecolor{rightcolor}{HTML}{676D8B}
\definecolor{leftcolor}{HTML}{7D8CA7}
\definecolor{starcolor}{HTML}{C57A6B}
\definecolor{transptext}{HTML}{585858}
\definecolor{devskill}{HTML}{272932}

% Fontawesome
\RequirePackage{fontawesome}

%URL
\RequirePackage{hyperref}

% Array for tabular
\RequirePackage{array}

% Images
\RequirePackage{graphicx}

% Margins
\RequirePackage[a4paper, total={6in, 10.5in}]{geometry}

  % STARS
\RequirePackage{tikz}
\usetikzlibrary{shapes.geometric}

\newcommand\score[1]{
\pgfmathsetmacro\pgfxa{#1+1}
  \begin{tikzpicture}[baseline]
    \foreach \i in {1,...,5} {
        \pgfmathparse{(\i<=#1?"starcolor":"gray!30!white")}
        \edef\starcolor{\pgfmathresult}
        \draw (\i*1.75ex,0) node[name=star\i,circle,fill=\starcolor, inner sep=2.5pt, draw]  {};
   }
  \end{tikzpicture}
}

% Title sec package
\RequirePackage{titlesec}
\titleformat{\section}         % Customise the \section command 
  {\huge\scshape\color{rightcolor}\bfseries\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\titlerule]   

% Some symbols
\RequirePackage{marvosym}

% Author Macros
\RequirePackage{titling}

 % Define Layout Environment
\newcommand{\topinfo}[1]{
  \begin{center}
  {\Huge \bfseries \color{titleblack} \theauthor}\\
  \end{center}

  \flushleft{#1}

  }

  % Environment for like Education and Hobbies and wtv
  \newenvironment{cvpart}[1]{
    \section{#1}
    \newcommand{\experience}[3]{\vspace{2mm}
      \large \textbf{##1} \dotfill ##2 \\ {\color{transptext} ##3}
    }

    \newcommand{\project}[2]{\vspace{2mm} \large \textbf{##1} \\ {\color{transptext} ##2}
    }

    \newcommand{\devskills}[1]{
      {\\ \small \bfseries \color{devskill} \textbf{Skills:} ##1}
    }
    
    }
  
  % Personal Info
  \newcommand{\phone}[1]{\Mobilefone: #1}
  \newcommand{\email}[1]{\Email: #1}
  \newcommand{\nationality}[1]{\textbf{Nacionality}: #1}

  \newenvironment{skills}[1]{
    {\hspace{-5mm}\Large\color{leftcolor}\bfseries#1}

    \newcommand{\skillentry}[2]{
      \begin{tabular}{m{.5\linewidth}l}
       $\bullet$ \textbf{##1}&\raisebox{1.5mm}{\score{##2}}
      \end{tabular}
    }

    \newcommand{\unratedskill}[1]{
      \begin{tabular}{m{.5\linewidth}l}
       $\bullet$ \textbf{##1}&
      \end{tabular}
    }
  }


