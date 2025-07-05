\version "2.24.4"

blank = { s1*9/8 }
blankAll = {
  \blank |
  \blank |
  \blank |
  \blank |
}

\parallelMusic pianoDynamicsUpper,pianoDynamicsBetween,pianoDynamicsLower,pianoDynamicsMidi {
  %1
  \blank |
  s4 \pp s8-\markup { \upright "con sordina" } s2. |
  \blank |
  \blank \ppp |

				%2-12
  \repeat unfold 11 \blankAll

				%13
  \blank |
  s8 s4\< s2.\! |
  \blank |
  s8 s4\< s2.\! |

				%14
  \blank |
  s4. \tuplet 2/3 { s8 s8\> } s4. |
  \blank |
  s4. \tuplet 2/3 { s8 s8\> } s4. |

				%15
  \blank |
  \blank \pp |
  \blank |
  \blank \ppp |
  
}
