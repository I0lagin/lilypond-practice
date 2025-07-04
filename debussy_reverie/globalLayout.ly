\version "2.24.4"

globalLayout = {

  \override Staff.Rest.style = #'z

  %1
  \time 4/4
  \tempo \markup { \concat { And \super "no" } sans lenteur }
  s1

				%2-91
  \repeat unfold 89 s1
  s2.|

				%92
  \tempo \markup { "un peu retenu" }

}