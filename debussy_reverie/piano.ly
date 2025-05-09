\version "2.24.4"



\parallelMusic pianoUpper,pianoLower,pianoPedal {
  
  %1
  \key f \major R1 |
  \key f \major <<
    { 
      \once \override TextScript.X-offset = #3.5
      \once \override TextScript.Y-offset = #4.1
      bes8_( 
      ^\markup { \italic \whiteout \pad-markup #0.5 "très doux et très expressif" }
      c d g_~ g d c bes_~) } \\
    { 
      \override NoteColumn.force-hshift = #-1.4
      \tag #'layout bes1
    }
  >> |
  \set Staff.pedalSustainStyle = #'bracket
  s1\sustainOn |

  %2
  R1 |
  <<
    { bes8_( c d g_~ g d c bes8_~) } \\
    { bes1 }
  >>  |
  s1 |

  %3
  g''2^( d_~ |
  <<
    { bes8_( c d g_~ g d c bes_~) } \\
    { bes1 }
  >>  |
  s1 |

  \mBreak

  %4  
  d4 e8 f g4 e8 d |
  <<
    { bes8_( c d g_~ g d c bes_~) } \\
    {  }
  >>  |
  s1 |

  %5
  \omit TupletBracket
  \tupletUp \once \override TupletNumber.Y-offset = #2.4
  \tuplet 3/2 { e4 c e } d2)~ |
  <<
    { bes8_( c d g_~ g d c bes_~) } \\
    {  }
  >>  |
  s1 |

  %6
  d2 << \stemDown { bes4^( d } \\ { } >> |
  <<
    { bes8_( c d g_~ g d c bes) } \\
    {  }
  >>  |
  s1 |

  %7
  << { \stemDown e4 f c2_~ } \\ { } >> |
  a8_( bes c f_~ f c bes a) |
  s1\sustainTap |

  \mBreak

  %8
  << { \stemDown c2 \stemNeutral g } \\ { } >> |
  \clef bass g8^( a bes e^~ e bes a g) |
  s1\sustainTap |

  %9
  <<
    { a1)^~ } \\
    { r4 a,8_( f' d a c f) } 
  >> |
  <<
    { f,8 c'_~ c2. } \\
    { \override NoteColumn.force-hshift = #-1.4 \tag #'layout f,1 }
  >> |
  s1\sustainTap |

  %10
  <<
    { a1 } \\
    { r4 a,8_( f' d a c f) } 
  >> |
  <<
    { f8 c'_~ c2. } \\
    { \override NoteColumn.force-hshift = #-1.4 \tag #'layout f,1 }
  >> |
  s1 |

  %11
  a'2_( e) |
  d8^( a' d f a c e c) |
  s1\sustainTap |

}

