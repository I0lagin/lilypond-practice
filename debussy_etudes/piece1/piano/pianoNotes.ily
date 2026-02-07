\version "2.24.4"

toUpper =
{
  \change Staff = "pianoUpper"
  \stemNeutral
}

toLower =
{
  \change Staff = "pianoLower"
  \stemNeutral
}

toUpperStem =
{
  \change Staff = "pianoUpper"
  \stemDown
}

toLowerStem =
{
  \change Staff = "pianoLower"
  \stemUp
}

sustainTap = \sustainOff\sustainOn

\parallelMusic pianoUpper,pianoLower,pianoPedal
{
  
  %%1--4
  \repeat unfold 2 { R1 aes8_. r r4 r2 } |
  \repeat unfold 4 { c'8_( d e f g f e d) } |
  s1*4 |

  %%5
  r4 aes8_. r r aes_. r aes_. |
  \repeat unfold 2 { c16_( d e f g f e d) } |
  s1 |

  %%6
  r8 aes_. r aes_.|
  \repeat unfold 2 { g16_( f e d) } |
  s2 |

}

