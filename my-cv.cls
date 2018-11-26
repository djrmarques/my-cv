\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my-cv}

\LoadClass{article}

% Define the colors
\RequirePackage{xcolor}

% Images
\RequirePackage{graphicx}

% Margins
\RequirePackage[a4paper, total={6in, 10in}]{geometry}

% Dashed Rule
\RequirePackage{dashrule}

\newcommand{\headlinecolor}{\normalcolor}

% Title sec package
\RequirePackage{titlesec}
\titleformat{\section}         % Customise the \section command 
  {\Large\scshape\color{blue}\bfseries\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\titlerule]   

% Some symbols
\RequirePackage{marvosym}

% Author Macros
\RequirePackage{titling}

% Images with the height of the text
\newcommand{\mychar}{%
  \begingroup\normalfont
  \includegraphics[height=\fontcharht\font`\B]{picture.png}%
  \endgroup
}


  % Define Layout Environment
\newcommand{\topinfo}{
  \begin{center}
  {\Huge \bfseries \theauthor}\\
  {\Large \bfseries \color{gray} Mechanical Engineer}
  \end{center}
  }

  % Personal Info
  \newcommand{\phone}[1]{\Mobilefone: #1\\}
  \newcommand{\email}[1]{\Email: #1}



  

  




  % define Education Env
  \newenvironment{education}{
    \section{Education}

    \newcommand{\entry}[2]{##1 \hdashrule[.5ex]{7cm}{1pt}{1pt} ##2 }

  }


  % define Skills Env

