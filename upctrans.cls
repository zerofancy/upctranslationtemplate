\RequirePackage{graphicx}


%-----------------
%----载入class----
%-----------------
\LoadClass[a4paper, zihao=-4, twoside]{ctexart}
% AutoFakeBold 表示伪粗的粗度

%-----------------
%----定义页边距----
%-----------------
\RequirePackage{geometry}
\geometry{left=2.5cm, right=2.5cm, top=3cm, bottom=2.5cm}
\geometry{headsep=2.3cm, footskip=1.8cm}
\geometry{headheight=14pt}

\def \@subtitle {}
\def \@stuid {}
\def \@classnum {}
\def \@supervisor {}

\newcommand{\classnum}[1]{\def \@classnum{#1}}
\newcommand{\subtitle}[1]{\def \@subtitle{——#1}}
\newcommand{\stuid}[1]{\def \@stuid{#1}}
\newcommand{\supervisor}[1]{\def \@supervisor{#1}}

\RequirePackage{fontspec}
\renewcommand\maketitle{
    \begin{titlepage}
        \includegraphics[width=7.3cm, height=1.8cm]{figure/UPCLogo.png}

        \begin{center}
            \vspace{5em}
            \makebox[\textwidth][c]{\zihao{-0} \heiti \bfseries 本\ 科\ 毕\ 业\ 设\ 计}\\
			\vspace{5em}
			\makebox[\textwidth][c]{\zihao{-0} \heiti \bfseries （外文翻译）}\\
			\vspace*{36pt}
			\begin{flushleft}
				\hspace{0.8em}\zihao{-2} \heiti \makebox[24em]{题\hspace{0.8em}目\textbf{：}\parbox[t][1em][l]{13cm}{\@title}} 
			\end{flushleft}
			\makebox[\textwidth][r]{\heiti \zihao{-2} \@subtitle}
%				\vspace{9.7em}
				\vfill
				{\zihao{3} \fangsong
					\renewcommand\arraystretch{1.5}
					\begin{tabular}{r@{：}l}
						\makebox[4.5em][s]{学生姓名} &
						\makebox[5em][l]{\@author}\\
						\makebox[4.5em][s]{学号} &
						\makebox[5cm][l]{\@stuid}\\
						\makebox[4.5em][s]{专业班级} &
						\makebox[5cm][l]{\@classnum}\\
						\makebox[4.5em][s]{指导教师} &
						\makebox[5em][l]{\@supervisor}\\
					\end{tabular}
				}\\
			\vspace*{5em}
			{\zihao{3} \fangsong \@date}\\
        \end{center}
    \end{titlepage}

    % 插入一个空白页
    \thispagestyle{empty}
    \cleardoublepage
    \setcounter{page}{1}
}

\ctexset{
	section={%
		format={\centering \songti \zihao{3}},
		name={第,章},
		aftertitle=\vspace{1.3em}
	},
	subsection={%
		format={\raggedright \songti \zihao{4}},
		aftername=\hspace{0.35em}
	},
	subsubsection={%
		format={\raggedright \songti \zihao{-4}},
		aftername=\hspace{0.35em}
	}
}

\RequirePackage{fancyhdr}
\pagestyle{fancy}

\fancyhead{} % 初始化页眉
\fancyhead[CO]{\songti \zihao{5} 中国石油大学（华东）学士学位论文外文翻译}
\fancyhead[CE]{\songti \zihao{5} \@title}
\fancyfoot{} % 初始化页脚
\fancyfoot[CE, CO]{\thepage}

%\renewcommand{\baselinestretch}{1.3541667} % 1.25倍行距
