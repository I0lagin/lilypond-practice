\version "2.26.0"

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

dOT = %% divOne32, for 32th notes
{
  \set stemLeftBeamCount = 3
  \set stemRightBeamCount = 1
}

dT = %% divTwo
{
  \set stemLeftBeamCount = 1
  \set stemRightBeamCount = 2
}

dTT = %% divTwo32, for 32th notes
{
  \set stemLeftBeamCount = 1
  \set stemRightBeamCount = 3
}

dZ = %% divZero, for rests, see measure 64
{
  \set stemLeftBeamCount = 1
  \set stemRightBeamCount = 1
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
    \tuplet 7/3 { ces16~-.-^ < ces des >~-.-^ < ces des fes >~ q4~ } q8.
  }
  |
  r8. r8. \toUpperStem g16->_( \toLower g, \dO a \dT b c d
  r16 e32( fis g \dOT a \dT b16 c d) \clef "treble" r16 e32( fis g \dOT a \dT b16 c d)
  < ees, bes' ees >8.( < des aes' des >)
  \clef "bass" bes16-.( aes-. \dO bes-. \acciaccatura { des } \dT ces-. bes-. aes-.)
  |
  s2.*3 |

  %%48--51
  R2.*2
  \clef "bass"
  ges,8.-.[ ces-. bes-. aes-.] des-.[ aes-. bes-. ces-.]
  |
  \repeat unfold 2
  <<
    {
      ges16( aes \dO bes \dT ces bes aes bes ces \dO bes \dT aes bes ces
      des ces \dO bes \dT aes bes ces bes ces \dO des \dT bes ces aes)
    } \\
    { fes2.-- fes2.--}
  >>|
  s2.*4 |

  %%52--%%54
  r8. ges16.-.( ges')-. r8. \clef "treble" ges'16.-.( ges')-.
  r8. ges16.-.( ges,)-. r8. \clef "bass"   ges,16.-.( ges,)-.
  \clef "treble" r8. des''16.-.( des')-. ges,-.( \dO ges')-. \dT aes,-.( aes')-. 
  |
  <<
    {
      g16 aes \dO bes \dT ces bes aes bes ces \dO bes \dT aes bes ces
      des ces \dO bes \dT aes bes ces bes ces \dO des \dT bes ces aes
      g16 aes \dO bes \dT ces bes aes bes ces \dO bes \dT aes bes ces
    } \\
    {
      \repeat unfold 3
      {
	fes,4.--( ees)
      }
    }
  >> |
  s2.*3 |

  %%55
  <<
    {
      bes16( ces \dO des \dT ees des ces) a( b \dO c \dT d b a)
    } \\
    {
      fes4.( e)
    }
  >> |
  <<
    {
      fes,4.( e)
    } \\
    {
      bes16( ces \dO des \dT ees des ces) a( b \dO c \dT d b a)
    }
  >> |
  s2. |

  %%56--%%58
  \clef bass r8. g,,,16.-.( g')-. r8. \clef "treble" g'16.-.( g')-.
  r8. g16.-.( g,)-. r8. \clef "bass"   g,16.-.( g,)-.
  \clef "treble" r8. d''16.-.( d')-. g,-.( \dO g')-. \dT a,-.( a')-. 
  |
  <<
    {
      gis''16 a \dO b \dT c b a b c \dO b \dT a b c
      d c \dO b \dT a b c b c \dO d \dT c b a
      gis a \dO b \dT c b a b c \dO b \dT a b c
    } \\
    {
      \repeat unfold 3
      {
	f,4.--( e)
      }
    }
  >> |
  s2.*3 |

  %%59--%%60
  <<
    {
      \oneVoice
      < d f b >8.[ ( < c f a > < a, dis fis > < c e f > ]
      \voiceOne
      < b f' a > [ < c, e > < g d' > < f a >)]
    } \\
    {
      s2.
      s8. \clef "bass" f4.-- e8.
    }
  >> |
  <<
    {
      g,16 a \dO b \dT c b a b c \dO b \dT a b c
      d   c \dO b \dT a b c b c \dO d \dT c b a
    } \\
    {
      g,2.~ g
    }
  >> |
  s8.\sustainOn \repeat unfold 7 { s8.\sustainTap } |

  % 61--62
  \clef "treble"
  r8. < g d' g >16.( < c f a >) r8. f,16( g a
  b c \dO d \dT e f g a b \dO c \dT d e f) |
  <<
    {
      g'16( a \dO b \dT c b a b c \dO b \dT a b c
      \oneVoice
      d e \dO f \dT g a b \clef "treble" c d \dO e \dT f g a)
    } \\
    {
      g,,,8. s8. s4. s2.
    }
  >>|
  s2.\sustainOff s2. |

  % 63--64
  <<
    {
      g'16->( f \dO ees \dT des ees f) ees->( des \dO c \dT bes c aes)
      g16->([ f \dO ees \dZ r \dT ees f)] ees->([ des \dO c \dZ r \dT c aes)]
    } \\
    {
      g'8. r ees r g, r ees r
    }
  >> |
  <<
    {
      \repeat unfold 2 { r8. des''''-> r bes }
    } \\
    {
      \repeat unfold 2
      {
	r16 f( \dO ees \dT des ees f) r des( \dO c \dT bes c aes)
      }
    }
  >> |
  s2.*2 |

  % 65--66
  \tag #'layout
  {
    \repeat unfold 2
    {
      \clef "treble" r8. < f aes e' >8.([-.->\arpeggio \clef "bass" < g,, d' >8.])-- -> r
    }
  }
  \tag #'midi
  {
    \repeat unfold 2
    {
      r8. \tuplet 7/2 { f''16-.-~^( < f aes >-.-^~ < f aes e' >-.-^~ q4 } r16 \clef "bass" < g,, d' >8.---^) r8.
    }
  }
  |
  \clef "bass"
  <<
    {
      \tag #'layout
      {
	\repeat unfold 4 { f8-.-- s4 }
      }
    } \\
    {
      \repeat unfold 4
      {
	\tag #'layout
	{
	  f8[ \dO cis'16 \dT d^( b aes)]
	}
	\tag #'midi
	{
	  f8[-.-- cis'16 d^( b aes)]
	}
      }
    }
  >>  |
  s4. s4.\sustainOn s4.\sustainOff s4.\sustainOn |

  % 67--68
  \repeat unfold 2
  {
    \clef "bass" < c, g' >8.^-^^
    \clef "treble" r16 r g'''( < e' g >8.)---^~ \noBeam q16 r r
  }
  |
  r16 e( \dO g \dT d' c e a d, \dO e \dT c d a)
  r16 e( \dO g \dT d' c e a d, \dO e \clef "treble" \dT g a d)
  |
  \repeat unfold 2 { s2.\sustainTap }  |

  % 69--70
  b''16( a \dO g \dT e d c b a \dO b \acciaccatura { d8 } \dT c16 b a)
  b16( a \dO g \dT e d c b a \dO b \acciaccatura { d8 } \dT c16 b a)
  |
  < e g >8.\noBeam e16( d c b a b \acciaccatura { d8 } c16 b a)
  \clef "bass" <<
    { r8. d,8.([ c a]) } \\
    { < g,, g' >2.-- } \\
    { s8. \voiceFour < e'' g >4.~ q8. }
  >> |
  s2.*2 |
  
  % 71
  \tag #'layout <<
    { \repeat unfold 2 { r8 e16( \noBeam g8.) } } \\
    { r16 f,( \dO cis' \dT e b a) r f( \dO c' \dT e b a) } \\
    % なにこれ...
    { \repeat unfold 2
      {
	\override NoteColumn.ignore-collision = ##t
	\omit Flag
	s8 < c e_~ >16 \noBeam \stemDown e s8
      }
    }
  >>
  \tag #'midi <<
    { \repeat unfold 2 { r8 e16~( \noBeam < e g >8.) } } \\
    { r16 f,( \dO cis' \dT r b a) r f( \dO c' \dT r b a) } 
  >>
  |
  <<
    { cis,4._( d) } \\
    {
      cis16^( g' g'_~ g g, cis,)
      d16^( g g'_~ g g, d)
    }
  >>|
  s4.\sustainTap s4.\sustainTap |

  % 72
  \omit TupletBracket
  \omit TupletNumber
  \tuplet 16/24 {
    \repeat unfold 2 { g32(-. a-. b-. \dOT c-. \dTT d-. c-. b-. a)-. }
  }
  |
<<
  { \repeat unfold 2 { dis'16^. s s e^. s s } } \\
  { \repeat unfold 2 { dis16[_( g, c,)] e'[_( g, c,)] } }
>>
  |
  s2.\sustainOff |  

  % 73 (copy of 71)
  \tag #'layout <<
    { \repeat unfold 2 { r8 e'16( \noBeam g8.) } } \\
    { r16 f,( \dO cis' \dT e b a) r f( \dO c' \dT e b a) } \\
    % なにこれ...
    { \repeat unfold 2
      {
	\override NoteColumn.ignore-collision = ##t
	\omit Flag
	s8 < c e_~ >16 \noBeam \stemDown e s8
      }
    }
  >>
  \tag #'midi <<
    { \repeat unfold 2 { r8 e16~( \noBeam < e g >8.) } } \\
    { r16 f,( \dO cis' \dT r b a) r f( \dO c' \dT r b a) } 
  >>
  |
  <<
    { cis4._( d) } \\
    {
      cis16^( g' g'_~ g g, cis,)
      d16^( g g'_~ g g, d)
    }
  >>|
  s4.\sustainOn s4.\sustainTap |

  % 74--75
  r4. s4. \clef "treble" R2.|
  ees16_( f \dO ees \dT f ees f
  \toUpperStem \clef "bass" ees' f \dO ees
  \toLowerStem \clef "treble" \dT ees' f ees)
  ees( f \dO ees \dT f ees f ees f \dO ees \dT f ees f) 
  |
  s2.*2 |

  % 76--78
  r8. e'16[( a \dO f \dT bes fis b] \grace { g32 c } g'16^.) r r
  \slurUp
  r8. \appoggiatura { \stemDown a32 e } \stemUp a,8._.[
    \appoggiatura { \stemDown e'32 a, } \stemUp e8._.
    \appoggiatura { \stemDown fis'32 cis } \stemUp fis,8._.]
  r8. \appoggiatura { \stemDown g'32 c, } \stemUp g16._.[
    \appoggiatura { \stemDown f'32 bes, } \stemUp f16._.]
  \appoggiatura { \stemDown c'32 g } \stemUp c,8._.[
    \appoggiatura { \stemDown bes'32 f } \stemUp bes,8._.]
  |
  \repeat unfold 3 { ees16( f \dO ees \dT f ees f ees f \dO ees \dT f ees f) } |
  s2.*3 |

  % 79
  \clef "bass"
  \stemDown
  \repeat unfold 2 { \tuplet 16/24 { ees,32(-. f-. g-. \dOT aes-. \dTT bes-. aes-. g-. f)-. } }|
  \clef "bass" r8.
  <<
    { < ees,, c' >8.-. < ees b' >-. \noBeam < ees c' >-. } \\
    {
      \tag #'layout { \repeat unfold 3 { ees16.-.[ aes,-.] } }
      \tag #'midi { \repeat unfold 3 { r16. aes-. } }
    }
  >>|
  s2.\sustainOff |

  % 80--82
  \stemNeutral
  \clef "treble"
  r8. e'16[ a \dO f \dT bes fis b] \appoggiatura { g32 c } \once \stemDown g'16^)-. r r
  \slurUp
  r8. \appoggiatura { \stemDown a32 e } \stemUp a,8._.[
    \appoggiatura { \stemDown aes'32 ees } \stemUp aes,8._.
    \appoggiatura { \stemDown ges'32 des } \stemUp ges,8._.]
  r8. \appoggiatura { \stemDown f'32 c } \stemUp f,16._.[
    \appoggiatura { \stemDown ees'32 bes } \stemUp ees,16._.]
  \appoggiatura { \stemDown bes'32 ges } \stemUp bes,8._.[
    \appoggiatura { \stemDown aes'32 ges } \stemUp aes,8._.]
  |
  \clef "treble"
  \repeat unfold 3 { ees'''16( f \dO ees \dT f ees f ees f \dO ees \dT f ees f) }
  |
  s2.\sustainOn s2.*2
  |

  % 83
  \repeat unfold 2 { \tuplet 16/24 { aes32(-. bes-. c-. \dOT des-. \dTT ees-. des-. c-. bes)-. } }
  |
  \clef "bass" r8.
  <<
    { < aes,, f' >8.-. < aes e' >-. \noBeam < aes f' >-. } \\
    {
      \tag #'layout { \repeat unfold 3 { aes16.-.[ des,-.] } }
      \tag #'midi { \repeat unfold 3 { r16. des-. } }
    }
  >>
  |
  s2.\sustainOff |

  % 84--89
  r8. e16-.( a-. f-. \stemDown bes8.-.) \stemNeutral r16 b16-.( fis-.
  \voiceOne c'8.)-.-> r8. des-.-> r
  \oneVoice r8. \stemDown < g e' g >16.-.( < c, a' c >-. < des bes' des >8.)-. \noBeam \stemNeutral < des, ees >-.
  \voiceOne c'8.)-.-> r8. des-.-> r
  \oneVoice r8. \stemDown < g e' g >16.-.( < c, a' c >-. < des bes' des >8.)-. \noBeam \stemNeutral < des, ees >-.
  \oneVoice r8. \stemDown < g' e' g >16.-.( < c, a' c >-. < d bes' d >8.)-.
  <<
    { < d, e >8. } \\
    {
      \omit TupletNumber
      \tuplet 4/6 { d32_( c bes a) }
    }
  >>
  | 
  <<
    {
      \tag #'layout
      {
	\once \override Staff.OttavaBracket.style = #'line
	\once \override Staff.OttavaBracket.font-series = #'normal
	\ottava #1
	\set Staff.ottavation = "m.d."
	< aes''' des >16->([ ees' des]\noBeam
	\ottava #0
	\stemNeutral ees, des ees
	des ees \dO des \dT ees des ees)
      }
      \tag #'midi
      {
	< aes, des >16->([ ees' des] \noBeam \stemNeutral ees des ees
	des ees \dO des \dT ees des ees)
      }
    } \\
    { < bes, bes' >8-> r16 s8. s4. }
  >>
  \repeat unfold 2 {
    \clef "bass"
    <<
      {
	\repeat unfold 2
	{
	  \omit TupletNumber
	  \tuplet 8/12
	  {
	    \toLowerStem e'32_([ \toUpperStem f g \dOT aes \dTT bes aes g f)]
	  }
	}
      } \\
      {
	\tag #'layout
	{
	  < des, bes' >8.-.\arpeggio \oneVoice r \voiceTwo < bes g' >-.\arpeggio \oneVoice r
	}
	\tag #'midi
	{
	  \tuplet 6/3 { des16 bes' r4 } r8. \tuplet 6/3 { bes,16 g' r4 } r8.
	}
      }
    >>
    \clef "treble"
    \repeat unfold 2 {
      \omit TupletNumber
      \tuplet 8/12 {
	e'32_([ f g \dOT aes \dTT bes aes g f)]
      }
    }
  }
  \omit TupletNumber
  \omit TupletBracket
  \tuplet 16/24 {
    e32_([ f g \dOT aes \dTT bes aes g f)] e^( f g aes \stemDown bes16) \noBeam r
  }
  |
  s2.\sustainOn
  \repeat unfold 8 { s4.\sustainTap }
  s4.\sustainTap s8. s8.\sustainOff
  |

  %%90--96
  \clef "bass"
  \tuplet 16/24 {
    bes32([ a g \dOT f) \dTT g( f e d)] \stemUp e([ d c \dOT bes) \dTT c( bes a g)]
  }
  s2.*6
  |
  \clef "bass"
  \tuplet 16/24 {
    bes,,32([ a g \dOT f) \dTT g( f e d)] \stemUp e([ d c \dOT bes) \dTT c( bes a g)]
  }
  \undo \omit TupletNumber
  \omit TupletBracket
  \toLower \tuplet 5/6 { ges32[^( aes bes ces des] } \toUpper \tuplet 5/6 { d[ c b a g] } \toLower \tuplet 5/6 { des'[ ees f ges aes] } \toUpper \tuplet 5/6 { a[ g f e d]) }
  \omit TupletNumber
  \toLower \tuplet 5/6 { ges32[^( aes bes ces des] } \toUpper \tuplet 5/6 { d[ c b a g] } \toLower \tuplet 5/6 { des'[ ees f ges aes] } \toUpper \tuplet 5/6 { a[ g f e d]) }
  \toLower \tuplet 5/6 { ges32[^( aes bes ces des] } \toUpper \clef "treble" \tuplet 5/6 { d[ c b a g] } \toLower \clef "treble" \tuplet 5/6 { des'[ ees f ges aes] } \toUpper \tuplet 5/6 { a[ g f e d]) }
  \toLower \tuplet 5/6 { ges32[^( aes bes ces des] } \toUpper \tuplet 5/6 { d[ c b a g] } \toLower \tuplet 5/6 { des'[ ees f ges aes] } \toUpper \tuplet 5/6 { a[ g f e d]) }
  \toLower \tuplet 5/6 { ges,32[^( aes bes ces des] } \toUpper \tuplet 5/6 { d[ c b a g] } \toLower \tuplet 5/6 { des'[ ees f ges aes] } \toUpper \tuplet 5/6 { a[ g f e d]) }
  \toLower \tuplet 5/6 { ges,32[^( aes bes ces des] } \toUpper \tuplet 5/6 { d[ c b a g] } \toLower \tuplet 5/6 { des'[ ees f ges aes] } \toUpper \tuplet 5/6 { a[ g f e d]) }
  |
  s2.*7|

  %%97--100
  % 2/4
  <<
    { g'''4->( g8) } \\
    { c,32( d e f g f e d c8) }
  >> \clef "bass" < c,, g' >8-.-^[
    < c, g' >-.-^ ]
  \clef "treble" <<
    { g''''8->[ f-> bes->] } \\
    { c,32( d e f) bes,16( c32 d ees f g aes) }
  >>
  % 12/16
  \repeat unfold 2 {
    \toLower g,16([ e \dO g \dT \toUpperStem d' c e)] a--([ d, \dO e \dT c d a)]
  } |
  \toLower
  <<
    { g,4-> g->~ g8 g->[ f-> bes->] } \\
    {
      \repeat unfold 2 { c,32( d e \dOT f \dTT g f e d) }
      \repeat unfold 2 { c32([ d e f)] } bes,16( c32 \dOT d \dTT ees f g aes)
    }
  >>
  \repeat unfold 2 { \voiceTwo c,4.-> \oneVoice < f c' >-> } |
  s4.\sustainOn s8 \sustainTap
  s2\sustainTap
  \repeat unfold 4 { s4.\sustainTap } |

  %%101--104
  % 2/4
  <<
    { g'4->( g8) } \\
    { c,32( d e f g f e d c8) }
  >> \clef "bass" \stemUp < c,, g' >8---^[
    < c, g' >---^ ] \stemNeutral
  \clef "treble" <<
    { g''''8->[ f-> bes->] } \\
    { c,32( d e f) bes,16( c32 d ees f g aes) }
  >>
  % 12/16
  \repeat unfold 2 {
    \toLower g,16([ e \dO g \dT \toUpperStem d' c e)] a--([ d, \dO e \dT c d a)]
  } |
  \toLower
  <<
    { g4-> g->~ g8 g->[ f-> bes->] } \\
    {
      \repeat unfold 2 { c,32( d e \dOT f \dTT g f e d) }
      \repeat unfold 2 { c32([ d e f)] } bes,16( c32 \dOT d \dTT ees f g aes)
    }
  >>
  \tag #'layout {
  \repeat unfold 2 { \voiceTwo c,4.-> \oneVoice < fis, c' d a' >->\arpeggio }
  }
  \tag #'midi {
    \repeat unfold 2 { c'4.-> fis,32 c' d a' r16 r8. }
  } |
  s4.\sustainOn s8 \sustainTap
  s2\sustainTap
  \repeat unfold 4 { s4.\sustainTap } |

  %%105--110
  \repeat unfold 3 {
    \stemDown a'16([ d, \dO e \dT c d a~] \stemUp a[ d, \dO e \dT c d a~]
    a[ d \dO c \dT e d a'~] \stemDown a[ d \dO c \dT e d g)]
  } |
  <<
    {
      \tag #'layout {
	< f, c' d a' >4.\arpeggio-> 
      }
      \tag #'midi {
	f32 c' d a' r16 r8. 
      }
      \clef "bass"
      c,,4.--~ c c--
      \repeat unfold 2 { \oneVoice r4. \voiceOne c--~ c c-- } 
    } \\
    {
      s2. < f,, f' >2.-- s2. < e e' >2.-- s2. < d d' >2.--
    }
  >>
  |
  s2.\sustainTap s2.*5 |

  % 111-116
  \clef "bass"
  \stemNeutral
  des,,,32( ees f \dOT ges \dTT aes bes c des ees f ges \dOT aes \dTT bes \clef "treble" c des ees
  \stemDown
  \undo \omit TupletNumber
  f ges aes \dOT bes \dTT c des ees f ges aes bes \dOT c \tuplet 6/4 { \dTT des \ottava #1 ees \dOT f \dTT ges aes bes }
  < e, g c >4)-.-^ \ottava #0 r
  \stemUp
  < e,, g c >4-.-^ r
  \clef "bass" r c,4-.-^~ c8 r r4
  |
  des32( ees f \dOT ges \dTT aes bes c des ees f ges \dOT aes \dTT bes c des ees
  \undo \omit TupletNumber
  f ges aes \dOT bes \dTT c \clef "treble" des ees f ges aes bes \dOT c \tuplet 6/4 { \dTT des ees \dOT f \dTT ges aes bes }
  < c, g' c >4-.-^) r^\markup{ \italic (m.d.) }
  \clef "bass" < c,, g' c >4-.-^ r
  r4 < c,, c' >4-.-^~ q8 r r4
  |
  s2\sustainOff s2*5 |

}