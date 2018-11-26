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


  % Define Layout Environment

  % Define Personal Info Environment
  \newcommand{\personalinfo}[4]{
    \includegraphics[width=\textwidth]{figures/personal}
    #1 \\
    {\small #2} \\
    #3 \\
    #4 \\
  }                        

  % define Education Env
  \newenvironment{education}{
    \section{Education}

    \newcommand{\entry}[2]{##1 \hdashrule[.5ex]{7cm}{1pt}{1pt} ##2 }

  }


  % define Skills Env

