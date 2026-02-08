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

%% 12/16 beam subdivisors

dO = %% divOne
{
  \set stemLeftBeamCount = 2
  \set stemRightBeamCount = 1
}

dOT = %% divOne32
{
  \set stemLeftBeamCount = 3
  \set stemRightBeamCount = 1
}

dT = %% divTwo
{
  \set stemLeftBeamCount = 1
  \set stemRightBeamCount = 2
}

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
  \tag #'layout
  {
    r8. < aes' b g' >8--\arpeggio r16
    r8. < g bes fis' >8--\arpeggio r16
    r8. < ges a f' >8--\arpeggio r16
    \repeat unfold 2 {
      \clef "treble"
      r8. < f aes e' >16-.-^\arpeggio([ r r \clef "bass" < g,, d' >8.---^)] r8.
    }
  }
  \tag #'midi
  {
    r8. \tuplet 7/2 { aes''16--~ < aes b >--~ < aes b g' >--~ q4 } r16
    r8. \tuplet 7/2 { g16--~ < g bes >--~ < g bes fis' >--~ q4 } r16
    r8. \tuplet 7/2 { ges16--~ < ges a >--~ < ges a f' >--~ q4 } r16
    \repeat unfold 2
    {
      \clef "treble"
      r8. \tuplet 7/2 { f16-.-~^( < f aes >-.-^~ < f aes e' >-.-^~ q4 } r16 \clef "bass" < g,, d' >8.---^) r8.
    }
  }
  |
  aes8-_ e'16 f( d b)
  g8-_ dis'16 e( cis bes)
  ges8-_ d'16 ees( c a)
  \repeat unfold 4 { f8-- cis'16 d( b g) }
  |
  s4.*4
  s4.\sustainOn
  s8\sustainOff s16\sustainOn s8.
  s4.\sustainTap
  |

  %%28--%%29
  \repeat unfold 2 { \clef "bass" < c, g' >8---^ r16 r8. s4. } |
  \repeat unfold 2
  {
    \toLower r16 e_([ \dO g \dT d' c e] \toUpperStem \clef "treble" a[ \toLowerStem d, \dO e \dT c d a])
  } |
  s2.\sustainTap s2.\sustainTap |

  %%30--%%31
  \toLowerStem d''16( c \dO e \toUpperStem \dT a g d' e c \dO d \dT a g d')
  a( \toLowerStem g \dO d \dT e c d) \toUpperStem \clef "bass" a( g \dO d \dT e c d) |
  s2.*2 |
  s2.*2 |

  %%32--%%34
  \clef "treble"
  \stemNeutral
  r16 r < c' ees >( \noBeam < bes g' >8.)
  r16 r < f c' e >( \noBeam < b g' >8.)
  r16 r < g' c >( \noBeam < bes ees >8.)
  r16 r < a e' >( \noBeam < b g' >8.)
  r16 r < c, e >( \noBeam < b g' >8.)
  r16 r < f c' e >( \noBeam < b g' >8.)
  |
  <<
    {
      \tag #'layout { ees,4. d des' a e d }
    } \\
    {
      ees16( bes' \dO a' \dT g bes, ees,) d( g \dO a' \dT f e d)
      des( g \dO f' \dT ees g, des) a( e' \dO d' \dT cis e, a,)
      e16( b' \dO a' \dT g b, e,) d( g \dO a' \dT f e d)
    }
  >> |
  \repeat unfold 6 s4.\sustainTap |

  %%35--%%38
  d16( c \dO g' \dT a g d' e c \dO d \dT a d g
  a g \dO d \dT e c d a g \dO d \dT e c d)
  \repeat unfold 4
  {
    a'( g \dO d \dT e c d)
  }
  |
  e,16( c' \dO g' \dT f, c' a' g, c \dO b' \dT f, c' a'
  e, c' \dO g' \dT f, c' a' g, c \dO b' \dT f, c' a')
  e,( c' \dO bes' \dT f, c' bes' g, c \dO bes' \dT f, c' bes'
  g, c \dO bes' \dT f, c' bes' e,, c' \dO bes' \dT f, c' bes')
  |
  s2.\sustainOff s2.*3 |

  %%39--%%40
  e16( c \dO a' \dT d, c b' e, c \dO a') \dT d,( c d)
  e16( c \dO a' \dT d, c b' e, c \dO a') \dT d,( c d)~
  |
  \repeat unfold 2
  {
    fis,16( d' \dO a' \dT g, d' g fis, d' \dO a') \dT g,( d' b')
  }|
  s2.*2 |

  %%41
  \toUpperStem d16( c \dO d \dT e d c \toLowerStem b a \dO b \dT c b a) |
  fis,8. s8. s4. |
  s2. |

  %%42--%%44
  \toUpper g'16--( g, \dO a \dT b c d) s8. b16( c d
  e fis \dO g \dT a b c d e \dO fis \tuplet 4/3 { \dT g a b c) }
  <<
    { ees16( des \dO ees \dT f ees des) } \\
    { < g, bes >8.( < f aes >) }
  >>
  \tag #'layout
  {
    < c, dis fis >8.\arpeggio-.-^ r8.
  }
  \tag #'midi
  {
    \tuplet 7/3 { c16~-.-^ < c dis >~-.-^ < c dis fis >~-.-^ q4~ } q8.
  }
  |
  r8. r8. \toUpperStem g'16--_( \toLower g, \dO a \dT b c d
  e fis \dO g \dT a b c \clef "treble" d e \dO fis \tuplet 4/3 { \dT g a b c) }
  < ees, bes' ees >8.( < des aes' des >)
  \clef "bass" b16-.( a-. \dO b-. \acciaccatura { d } \dT c-. b-. a-.)
  |
  s2.*3 |

  %%45--%%47
  \toUpper g'16->( g, \dO a \dT b c d) s8. b16( c d
  r16 e32( fis g \dOT a \dT b16 c d) r e32( fis g \dOT a \dT b16 c d)
  <<
    { ees16( des \dO ees \dT f ees des) } \\
    { < g, bes >8.( < f aes >) }
  >>
  \tag #'layout
  {
    < ces, des fes >8.\arpeggio-.-^ r8.
  }
  \tag #'midi
  {
    \tuplet 7/3 { ces16~-.-^ < ces des >~-.-^ < ces des fes >~-.-^ q4~ } q8.
  }
  |
  r8. r8. \toUpperStem g16--_( \toLower g, \dO a \dT b c d
  r16 e32( fis g \dOT a \dT b16 c d) \clef "treble" r16 e32( fis g \dOT a \dT b16 c d)
  < ees, bes' ees >8.( < des aes' des >)
  \clef "bass" bes16-.( aes-. \dO bes-. \acciaccatura { des } \dT ces-. bes-. aes-.)
  |
  s2.*3 |

}

