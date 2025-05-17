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
  a'2_(^\( e_)_~ |
  d8^( a' d f a c e c) |
  s1\sustainTap |

  \mBreak

  %12
  e4 c8 e d4 bes8 g\) |
  a8^( f a c g, d' g bes) |
  s2 s2\sustainTap |

  %13
  a'2^\( e_~ |
  d,,8^( a' d f a c e c) |
  s1\sustainTap |

  %14
  e4 c8 e d4 bes8 g\) |
  a8^( f a c) g,( d' g bes) |
  s2 s2\sustainTap |

  %15
  <<
    { \stemNeutral g'2^( d_~ } \\
    { }
  >> |
  c,,8^( g' e' g bes d e d) |
  s1\sustainTap |

  \pBreak

  %16
  <<
    { \stemNeutral d4 bes8 d c4 a8 g } \\
    { }
  >> |
  bes8^( d bes g \stemDown f, c' f a) |
  s2 s2\sustainTap |

  %17
  <<
    { a4 e8 a f4 d8 f }\\
    { s4 c s4 a }
  >> |
  a,8^( e' a e d a' f d) |
  s2\sustainTap s2\sustainTap |

  %18
  <<
    { d2 c) } \\
    { }
  >> |
  \stemUp g,8_( f' g \toUpperStem < g bes >) \toLowerStem c,,_( g' e' \toUpperStem < g bes >) |
  s2\sustainTap s2\sustainTap |

  %19
  <<
    { ees'1^~ } \\
    { < c c' >2( < g g' >)~ }
  >> |
  \toLower \stemNeutral f,,8^( f' c' ees g a c ees) |
  s1\sustainTap |

  \mBreak

  %20
  << 
    { ees'2 ees } \\
    { < g, g' >4^( < a a' >8 < bes bes' > < c c' >4 < a a' >8 < g g' >) }
  >> |
  \stemDown g8^( ees c a g ees c f,) |
  s1 |

  %21
  <<
    { ees'2 s2 } \\
    { 
      \omit TupletBracket
      \tupletUp
      \tuplet 3/2 { < a, a' >4^( < f f' > < a a' > } ) < g_~ ees'_~ g^~ >2
    }
  >> |
  \stemNeutral f,8^( f' c' ees g a c ees)  |
  s1\sustainTap |

  %22
  <<
    { s1 } \\
    { q2^( < ees c' ees >4 < g g' > }
  >> |
  \stemDown g8^( ees c a g ees c f,) |
  s1 |
  
  %23
  <<
    { d'2 s2 } \\
    { < a a' >4 < bes bes' > < f_~ d'_~ f^~ >2) }
  >> |
  \stemNeutral bes,8^( f' bes d f bes d f) |
  s1\sustainTap |

  \mBreak

  %24
  <<
    { s2 < a a' >4^( < bes bes' > } \\
    { < f d' f >2 d' }
  >> |
  d8^( bes f d bes f bes, f')) |
  s1 |

  %25
  <<
    { < c c' >4 < d d' > < a_~ d^~ a'^~ >2 } \\
    { f'1 }
  >> |
  bes,8^( f' bes d f bes d f) |
  s1\sustainTap |

  %26
  <<
    { < a, d a' >2 < bes bes' >4 < d d' >) } \\
    { s2 d }
  >> |
  d8^( bes f d bes f bes, f') |
  s1 |

  %27
  < f cis' f >2 < cis cis' > |
  g,8^( g' cis f a cis f a) |
  s1\sustainTap |

  \mBreak

  %28
  r4 <<
    { d8( e f4 f8 a) } \\
    { a,2. }
  >> |
  g,,8^( d' f a d a f d) |
  s1\sustainTap |

  %29
  < f' cis' f >2 < cis cis' > |
  g,,8^( g' cis f a cis f a) |
  s1\sustainTap |

  %30
  r4 <<
    { d8( e f4 f8 a) } \\
    { a,2. }
  >> |
  g,,8^( d' f a d a f d) |
  s1\sustainTap |

  %31
  <<
    { f'4 } \\
    { a,4 }
  >> d,8^( e f4 f8 a |
  g,8^( d' f a d a f d) |
  s1\sustainTap |

  \mBreak

  %32
  f2 d2_~ |
  g,8^( d' f a b a g f) |
  s1\sustainTap |

  %33
  < b d >4 c \once \stemUp c'2) |
  \shape #'((0 . 0) (5 . -7) (-2 . 3) (0 . 0)) Slur
  c,8^( g' c e g c e g |
  s1\sustainTap |

  %34
  \toLower R1 |
  \toUpper c8 e g c g e c g) |
  s1 |

  %35
  \toUpper <<
    { \repeat unfold 2 { ees8^( c g c) } } \\
    { < ees, g >4 s4 q4 s4 }
  >> |
  \toLower c,4^( bes8 a g2_~ |
  s1\sustainTap |

  \pBreak

  %36
  <<
    { \repeat unfold 2 { ees'8^( c g c) } } \\
    { < ees, g >4 s4 q4 s4 }
  >> |
  g4 a8 bes c4 c8 ees) |
  s1 |

  %37
  <<
    { \repeat unfold 2 { a'8^( fis d fis) } } \\
    { < a, d >1 } 
  >> |
  <<
    { < d fis >1 } \\
    { d,4\rest a'4^._( d,^. a^. }
  >> |
  s1\sustainTap |

  %38
  <<
    { a'8^( fis d fis) d^( a fis a) } \\
    { < a d >1 } 
  >> |
  << { } \\ { \stemUp d,2_. d,) } >> |
  s1 |

  %39
  <<
    { \repeat unfold 2 { ees'8( c g c) } } \\
    { < ees, g >4 s q s }
  >> |
  c'''4^( bes8 a g2_~ |
  s1\sustainTap |

  \mBreak

  %40
  <<
    { ees'8( c g c) g'( ees c ees) } \\
    { < ees, g >4 s < g c > s }
  >> |
  g4 a8 bes c4 c8 ees) |
  s2 s2\sustainTap |

  %41
  <<
    { \repeat unfold 2 { gis'8^( e c e) } } \\
    { < gis, c >1 } 
  >> |
  e1^~ |
  s1\sustainTap |

  %42
  <<
    { gis'8^( e c e) gis^( c, gis' e) } \\
    { < gis, c >1 }
  >> |
  e2 dis4 e |
  s2 s2\sustainTap | 

  %43 
  \repeat unfold 2 { a'8^( c, a c) } |
  \clef treble <<
    { g4^( f8 e d2)^~ } \\
    { < a c >1_~ }
  >> |
  s1 |
  
  \mBreak

  %44
  \repeat unfold 2 { a'8^( c, a c) } |
  <<
    { d2^( e4 f) } \\
    { < a, c >1 }
  >> |
  s1 |

  %45
  b'8^( f b, f') <<
    { c'^( bes f bes) } \\
    { c,2_~ }
  >> |
  <<
    { f'4^( e8 d c2^~ } \\
    { < gis b >2 < g bes >_~ }
  >> |
  s2\sustainTap s2\sustainTap |

  %46
  <<
    { \repeat unfold 2 { c'8^( bes f bes) } } \\
    { c,1 }
  >> |
  <<
    { c2 d4 e) } \\
    { < g, bes >1 }
  >> |
  s1\sustainTap |

  %47
  c'8^( a c, g') d'^( a d, bes' |
  \clef bass <<
    { e'4 d8 c bes2\arpeggio^~ } \\
    { < f a >2 < g, d' >\arpeggio_~ }
  >> |
  s1 |

  \mBreak

  %48
  d,8 a d, bes' a,4 g) |
  <<
    { bes'2 } \\
    { < g, d' >2 }
  >> c,8[ c'] bes'[ e] |
  s1 |

  %49
  f2 f'2_~ |
  f,,,8[^( f'] c' a'^~ a4) r |
  s1 |

  %50
  f2 a |
  R1 |
  s1 |

  %51
  < d f >4^.^( < b e >^. q^. < d f >^. |
  \clef treble < d a' >4_( < e gis > q < d a' > |
  s1 |

  %52
  q4^. < b e >4^. q2^.) |
  q4 < e gis > q2) |
  s1 |

  %53
  < d, f >4 < b e > q << { \tuplet 3/2 { f'8 a f } } \\ { d4 } >> |
  \clef bass < d, a' >4 < e gis > q < d a' > |
  s1 |

  \mBreak

  %54
  < b e >4 < bes d > c2 |
  <<
    { \crossStaff { f4 e < f a >2 } } \\
    { g,4 c, f f, }
  >> |
  s1 |

}