\version "2.24.4"

menoP = #(make-dynamic-script
  (markup #:normal-text #:italic "meno" #:dynamic "p")
)

\parallelMusic pianoDynamicsUpper,pianoDynamicsBetween,pianoDynamicsLower,pianoDynamicsMidi {

  %1
  s1 |
  \once \override DynamicText.extra-offset = #'(0 . -1)
  s1\pp |
  s1 |
  s1\ppp |

  %2-10
  s1*9 |
  s1*9 |
  s1*9 |
  s1*9 |

  %11
  s1 |
  \override DynamicText.self-alignment-X = -1
  s1\menoP |
  s1 |
  s1\pp |

}