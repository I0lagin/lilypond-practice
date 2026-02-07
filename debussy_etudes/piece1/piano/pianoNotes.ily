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
  
  %%1--%%4
  \repeat unfold 2 { R1 aes8-. r r4 r2 } |
  \repeat unfold 4 { c'8( d e f g f e d) } |
  s1*4 |

  %%5
  r4 aes8-. r r aes-. r aes-. |
  \repeat unfold 2 { c16( d e f g f e d) } |
  s1 |

  %%6
  r8 aes-. r aes-.|
  \repeat unfold 2 { g16( f e d) } |
  s2 |

  %%7--%%10
  <<
    {
      \oneVoice
      \repeat unfold 4 { s8 r16 r8. }
    } \\
    {
      \oneVoice
      \toUpper \stemUp \noBeam aes8-_( \toLower e'16 f d b)
      \toUpper \stemUp \noBeam g8-_( \toLower dis'16 e cis bes)
      \toUpper \stemUp \noBeam ges8-_( \toLower d'16 ees c a)
      \toUpper \stemUp \noBeam f8-_( \toLower cis'16 d b g)
    }
  >> |
  \clef "bass"
  \repeat unfold 4 { r16 r s4 } |
  s4.*4 |

  %%11--%%14
  \repeat unfold 2 {
    g'8( a b c d c b a)
    r2 r4 \appoggiatura { cis32 b ais gis } \tuplet 3/2 { fis8-.( cis'-. fis)-. }
  } |
  \repeat unfold 2 { R1 \clef "treble" g8( a b c d c b a) } |
  s1*4 |

  %%15--%%16
  e'16( d c b g a b c) d( c b a f g a b) c( b a g e f g a) b( a g f) r4 |
  b16( c d e f e d c) a( b c d e d c b) g( a b c d c b a) g( a b a g f e d) |
  s1*2 |

  %%17--%%20
  <<
    {
      \oneVoice
      \repeat unfold 4 { s8 r16 r8. }
    } \\
    {
      \oneVoice
      \toUpper \stemUp \noBeam aes,,8-_( \toLower e'16 f d b)
      \toUpper \stemUp \noBeam g8-_( \toLower dis'16 e cis bes)
      \toUpper \stemUp \noBeam ges8-_( \toLower d'16 ees c a)
      \toUpper \stemUp \noBeam f8-_( \toLower cis'16 d b g)
    }
  >> |
  \clef "bass"
  \repeat unfold 4 { r16 r s4 } |
  s4.*4 |

  %%21--%%27
  r8. < aes' b g' >8--\arpeggio r16
  r8. < g bes fis' >8--\arpeggio r16
  r8. < ges a f' >8--\arpeggio r16
  \repeat unfold 2 {
    \clef "treble"
    r8. < f aes e' >16-.-^\arpeggio([ r r \clef "bass" < g,, d' >8.---^)] r8.
  }
  |
  aes8-_ e'16 f( d b)
  g8-_ dis'16 e( cis bes)
  ges8-_ d'16 ees( c a)
  \repeat unfold 4 { f8-- cis'16 d( b g) }
  |
  s4.*4
  s4.\sustainOn s4.\sustainTap s4.\sustainTap

}

