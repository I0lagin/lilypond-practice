\version "2.24.4"

global = {

  \autoBreaksOff

  \time 3/4
  \key g \major
  \tempo \markup { \concat { "Mouv" \super "t" } de Menuet } 4 = 88

  %0
  \partial 4 s4 |

  %1-48
  s2.*48 |

  %49
  \tempo "Retenu" s2.

  %50
  s2.

  %51
  \tempo "Lent" s2.

  %52-54
  s2.*3
  \fine

}