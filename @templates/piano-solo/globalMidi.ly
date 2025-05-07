\version "2.24.4"

\parallelMusic globalMidi,pianoDynamicsMidi {

  \time 2/4
  \key a \major

  %1
  \tempo 4=56 s4
  \tempo 4=60 s8
  \tempo 4=66 s8 |
  s2\pppp |

  %2-7
  \repeat unfold 6{
    \tempo 4=56 s4
    \tempo 4=60 s8
    \tempo 4=66 s8 |
    s2 | 
  }

}