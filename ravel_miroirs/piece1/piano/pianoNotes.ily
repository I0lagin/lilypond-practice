\version "2.26.0"

tU =
{
  \change Staff = "pianoUpper"
  \stemNeutral
}

tL =
{
  \change Staff = "pianoLower"
  \stemNeutral
}

tUS =
{
  \change Staff = "pianoUpper"
  \stemDown
}

tLS =
{
  \change Staff = "pianoLower"
  \stemUp
}

dO = %% divOne
{
  \set stemLeftBeamCount = 2
  \set stemRightBeamCount = 1
}

dT = %% divTwo
{
  \set stemLeftBeamCount = 1
  \set stemRightBeamCount = 2
}

d_A = %% so weird I'm numbering these. See m.7
{
  \set stemLeftBeamCount = 3
  \set stemRightBeamCount = 1
}

d_B = %% See m.8
{ 
  \set stemLeftBeamCount = 2
}

d_C = %% See m.14
{
  \set stemLeftBeamCount = 1
  \set stemRightBeamCount = 3
}

sustainTap = \sustainOff\sustainOn

\parallelMusic pianoUpper,pianoLower,pianoPedal
{
  
  %% oh my god does this need dO dT too? Okay.
  %%1-3
  % \omit TupletNumber
  % \omit TupletBracket
  \repeat unfold 2 {
    a''16( < bes ees > f < ges bes >~ q8 b16 < aes c > a < bes ees > b < c f >)
  }
  \tuplet 6/4 { ees16->( aes, \dO ees \dT des' aes des, }
  \tuplet 6/4 { aes' f \dO aes,) \dT ees'16->( aes, ees }
  \tuplet 6/4 { des' aes \dO des, \dT aes' f aes,) } |
  \repeat unfold 2 {
    \tuplet 3/2 { ges''8( c, aes }
    \tuplet 3/2 { fes' bes, ges }
    \tuplet 3/2 { aes' d, bes) }
  }
  \tuplet 3/2 { des,8( aes' e') }
  r8
  \clef "bass"
  \tuplet 3/2 { aes,,8( e' des,) } r8 |
  \repeat unfold 2 { s2.\sustainTap } \repeat unfold 2 { s4.\sustainTap } |

  % 4--5
  eis'16( < fis cis' > e < eis b'~ > b'8 eis,16 < fis b > dis b' cis, a') 
  eis16( < fis cis' > e < eis b'~ > b'8 eis,16 < fis b > dis < e b' > bis < cis a'>) |
  \tuplet 3/2 { e8( gis d' } \tuplet 3/2 { fis d gis, } a e')
  \tuplet 3/2 { e,8( gis d' } \tuplet 3/2 { fis d gis, } \tuplet 3/2 { a, e' a }) |
  \repeat unfold 2 { s2.\sustainTap } |

  % 6
  \once \omit TupletNumber
  \tuplet 7/4 { s16*4 f8 s16 } s2 |
  \tuplet 7/4 { \tLS ees,16\( bes' fis'( g) \tUS des' a bes }
  \tLS \clef "treble" bes32 ees fis g \tUS a bes des f
  \tLS bes,32 ees fis g \tUS a bes des f\) |
  s2.\sustainTap |

  % 7
  r4 s2 |
  \tLS r4 
  \override Score.SpacingSpanner.spacing-increment = #(* 1.2 0.63)
  \once \omit TupletNumber
  \once \omit TupletBracket
  \tuplet 14/16 { bes,,32([ d ees fis g \tUS a bes des f \d_A bes \tLS \ottava #1 \d_B < des f >16-.]) \ottava #0 \voiceOne r16 \oneVoice } |
  s4 s2\sustainTap |

  % 8--9
  \ottava #1 < des'' ees des' ees >8-. < f g >-. \ottava #0 r4 < des ees >8-. r
  r8 < g, a >8-_ r2|
  < des,, ees >8-. < f g >8-. r4 < des ees >8-. r
  R2. |
  s2.\sustainTap s2. |

  % 10--14
  \repeat unfold 2 {
    a16( < bes ees > f < ges bes >~ q8 b16 < aes c > a < bes ees > b < c f >)
  }
  \tuplet 6/4 { ees16->( aes, \dO ees \dT des' aes des, }
  \tuplet 6/4 { aes' f \dO aes,) \dT g''16->( c, g }
  \tuplet 6/4 { f'16 c \dO f, \dT c' f, c) }
  \tuplet 6/4 { g'16->([ c, g f' c f,] } \tuplet 3/2 { c' f, c) }
  |
  \repeat unfold 2 {
    \tuplet 3/2 { ges8( c, aes }
    \tuplet 3/2 { fes' bes, ges }
    \tuplet 3/2 { aes' d, bes) }
  }
  \tuplet 3/2 { des,8( aes' e') } r8 \tuplet 3/2 { f,8->( c' aes') } r8
  \tuplet 3/2 { c,,8( aes' f,) } r8 |
  \repeat unfold 2 { s2.\sustainTap } \repeat unfold 3 { s4.\sustainTap } |

  % 15--16
  \repeat unfold 2 {
    \tag #'layout {
          \voiceOne
    c'4( bes8) \noBeam \tuplet 3/2 { d( c g')-! }
    }
    \tag #'midi {
          \voiceOne
    c,4( r8) \noBeam \tuplet 3/2 { d( r g)-! }
    }
  } |
  \repeat unfold 2 {
    \tuplet 6/4 { bes16_( c \dO cis \dT aes' \tUS e f } \tuplet 3/2 { bes f d) }
    \tLS
    \tuplet 15/8 { c32_([ dis e \tUS fis \d_A g \d_C c \tLS g bes \tUS b c] s) s8 }
    \tL
  }
  |
  \repeat unfold 2 { s4.\sustainTap s4\sustainTap } |

  

}

