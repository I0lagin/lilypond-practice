\version "2.24.4"

\include "hoge.ly" 
\include "fuga.ly" 

\score {

  \relative c' { \hoge \fuga }

}

% set variable `piyo` in folders `/01_hoge` and `/02_fuga`
% each variable is *done for* after each folder's main.ly & topmost variable is sent to metafolder main.ly
% therefore, i could use separate globalLayout in multiple movements without changing the name if i keep them in separate folders

% that is for piano; how about ensembles? that's a story for another time