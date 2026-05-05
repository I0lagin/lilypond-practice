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

%% 12/16 beam subdivisors

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

dZ = %% divZero, for rests
{
  \set stemLeftBeamCount = 1
  \set stemRightBeamCount = 1
}

sustainTap = \sustainOff\sustainOn

% beginning at line 200
% volta 1 at line 221
% volta 2 at line 247

repeatA = { % measures 5--29

  % 5--6
  c16( b \dO c \dT a b c d c \dO d \dT b d fis
  e d \dO e \dT c d e fis e \dO fis \dT d fis a) |
  <<
    { \repeat unfold 2 { a4. b } } \\
    { g4.( fis g d) }
  >>|
  s2.\sustainOff s2. |
  
  % 7--9
  \repeat unfold 2 { fis16( g \dO e \dT d e b a8 b cis) } 
  fis16( g \dO e \dT d e b b d \dO a \dT a b e,) |
  \repeat unfold 2 {
    <<
      { d'8.( g, fis4.) } \\
      { e4. b16( cis \dO e \dT fis a b) }
    >>
  }
  <<
    { d8.( g,4. fis8.) } \\
    { e4. d8. cis) }
  >>
  |
  s2.*3 |

  %%10--13
  \repeat unfold 2 {
    \repeat unfold 2 {
      \tag #'layout {
	\grace {
	  <<
	    % compromising
	    {
	      \shape #'((-0 . -0) (0.5 . 0.25) (0.75 . 0.25) (1.5 . -0)) Slur
	      fis32( g)
	    } \\
	    { dis16\laissezVibrer }
	  >>
	}
	< dis fis >16( cis q~ q8.)
      }
      \tag #'midi {
	< dis fis >32 g < dis fis > cis q4
      }
    }
    \repeat unfold 2 { < dis fis >16( e \dO b \dT cis e a) }
  } |
  \clef "bass"
  \grace { s16 } % from Upper
  \repeat unfold 2 {
    \repeat unfold 2 { b16( a \dO e \dT fis a cis) }
    \repeat unfold 2 { b8-.\laissezVibrer r16 r8. }
  } |
  \repeat unfold 2 { s2.\sustainOff \repeat unfold 2 { s4.\sustainTap } } |

  % 14--21
  \stemUp
  fis16^([ e \dO fis \dZ r \dT e fis] cis' fis, \dO cis' \dT b eis, b')
  e,^( d \dO e \dT \toLower c \toUpper d e a dis, \dO a' \dT g d g)
  \stemUp
  c,^( d \dO c \dT \toLower a \toUpper b c d f \dO e \dT d e c
  b c \dO a \dT b c d c d \dO e \dT g a c)
  \stemDown
  e16^( d \dO e \dT \toLowerStem c \toUpperStem d e b' e, \dO b' \dT a dis, a')
  d,^( c \dO d \dT \toLowerStem bes \toUpperStem c d g cis, \dO g' \dT f c f)
  bes,^( a \dO bes \dT \toLowerStem g \toUpperStem a bes c ees \dO d \dT c d bes
  a bes \dO g \dT a bes c a g \dO e \dT d c d) |
  <<
    {
      dis8. d4. cis8.
      c4. b8. bes
      a4.~ a8. gis
      fis8.[ f e c']
      \clef "treble"
      \grace {s16}
      c'4.~ c8. b
      bes4. a8. aes
      g4.~ g8. fis8.
      \clef "bass"
      \grace {s16}
      f8. e4. b8.
    } \\
    {
      b8.[( ais a gis]
      g[ fis f e])
      f[( e b e]
      a,4.[ a'8. e'])
      \grace {s16}
      \clef "treble"
      a8.[( gis g fis]
      f[ e ees d])
      ees[( d a d]
      \grace {s16}
      \clef "bass"
      g,8.[ c f, g])
    }
  >> |
  s8.\sustainOn \repeat unfold 3 { s8.\sustainTap }
  \repeat unfold 7 { \repeat unfold 4 { s8.\sustainTap } }|

  % 22--29 who the hell puts tenuto on grace notes ... this is ravel? ... who
  % *doesn't* put tenuto on grace notes amirite
  \stemNeutral
  \tag #'layout {
    \appoggiatura { e32-- d } e4.^( fis8 a d)
    \appoggiatura { e,32-- d } e4. \appoggiatura { fis32-- e } fis4.
    \appoggiatura { b32-- a } b4.( cis8 e a)
    \appoggiatura { b,32-- a } b4. \appoggiatura { cis32-- b } cis4.
    \repeat unfold 3 { \appoggiatura { fis32^> e } fis4. } \appoggiatura { fis32^> g } fis4.
    \appoggiatura { fis32^> a } fis4. s4.
    s2.
  }
  \tag #'midi {
    e,32 d e8~ 8.( fis8 a d)
    e,32 d e8~ 8. fis32 e fis8~ 8.
    b32 a b8~ 8.( cis8 e a)
    b,32 a b8~ 8. cis32 b cis8~ 8.
    \repeat unfold 3 { fis32 e fis8~ 8. } fis32-> g fis8~ 8.
    fis32-> a fis8~ 8. s4.
    s2.
  } |
  c,16( g' \dO c \dT g c e d c \dO a \dT fis e d)
  c( g' \dO c \dT g c e) b,( fis' \dO b \dT fis b d)
  \clef "treble"
  \grace { s16 }
  g,( d' \dO g \dT d g b a g \dO e \dT cis b a)
  g( d' \dO g \dT d g b) fis,( cis' \dO fis \dT cis fis a)
  d,( fis \dO a \dT b d e) c,( e \dO g \dT a c e)
  b,( d \dO fis \dT a b d) a,( d \dO fis \dT a b d)
  <<
    {
      \oneVoice
      e,,( b' \dO d \dT \toUpperStem g b d \toLowerStem fis \toUpperStem g \dO b \dT d b g
      fis g \dO e \dT d e b b d \dO a \dT g e fis)
    } \\
    {
      s2.
      \oneVoice
      b8.~( < e, b' > < a, e' > < d, c' >)
    }
  >> |
  \repeat unfold 2 {
    s2.\sustainTap
    \repeat unfold 2 { s4.\sustainTap }
  }
  \repeat unfold 4 { s4.\sustainTap }
  s2.\sustainTap s2. |

}

\parallelMusic pianoUpper,pianoLower,pianoPedal
{
  
  %%1--4
  \repeat unfold 2 {
    \repeat unfold 2 { a'16_([ g \dO d \dT e g b)] } 
    \repeat unfold 2 {
      \tag #'layout { \appoggiatura { a32 b } a16( g a~ a8.) }
      \tag #'midi {
	a32 b a g a16~ a8.
      }
    }
  } |
  \repeat unfold 2 {
    \repeat unfold 2 { e'8-.\laissezVibrer r16 r8. }
    \repeat unfold 2 { d16([ c \dO g \dT a c e)] }
  } |
  \repeat unfold 2 { \repeat unfold 2 { s4.\sustainTap } s2.\sustainOff } |

  \repeatA

  % 30--33 (volta 1)
  \repeat unfold 2 {
    <<
      {
	\repeat unfold 2 {
	  a,16_([ g \dO d \dT e g b)] 
	} 
      } \\
      {  b,8-.\laissezVibrer r16 r8. r4.  }
    >>
    \repeat unfold 2 {
      \tag #'layout { \appoggiatura { a'32 b } a16( g a~ a8.) }
      \tag #'midi {
	a32 b a g a16~ a8.
      }
    }
  } |
  \clef "bass"
  \repeat unfold 2 {
    g,2.
    \repeat unfold 2 { d''16([ c \dO g \dT a c e)] }
  } |
  \repeat unfold 2 { s2.\sustainTap s2.\sustainOff } |

  \tag #'midi \repeatA

  % 30, 34--36 (volta 2)
  % hide second 30 from layout
  \tag #'midi <<
    { \repeat unfold 2 { a,16_([ g \dO d \dT e g b)] } } \\
    {  b,8-.\laissezVibrer r16 r8. r4.  }
  >>
  \repeat unfold 6 { a'16_([ g \dO d \dT e g b)] } |
  \clef "bass"
  \tag #'midi g,2.
  <<
    {
      d''8-.\laissezVibrer r16 r8. r4.
      \repeat unfold 4 { d8-.\laissezVibrer r16 r8. }
    } \\
    { g,2.-> g~ g }
  >> |
  \tag #'midi s2.\sustainTap
  s2.\sustainTap
  \repeat unfold 4 { s4.\sustainTap } |

  % 37--40
  \repeat unfold 2 {
    \repeat unfold 2 { a16_([ g \dO d \dT e g b)] } 
    \repeat unfold 2 {
      \tag #'layout { \appoggiatura { \voiceOne a32 b \oneVoice } a16^( g a~ a8.) }
      \tag #'midi {
	a32 b a g a16~ a8.
      }
    }
  } |
  <<
    {
      \repeat unfold 2 {
	\repeat unfold 2 { d'8-.\laissezVibrer r16 r8. }
	\repeat unfold 2 {
	  \tag #'layout {
	    \toUpperStem \appoggiatura { \voiceTwo < d a' >16 \voiceOne \stemDown } d16_( \toLowerStem c, \dO g' \dT a c e)
	  }
	  \tag #'midi {
	    d16_( c, g' a c e)
	  }
	}	
      }
    } \\
    {
      \repeat unfold 2 {
	< c, g' >2.
	\repeat unfold 2 { f,8-.\laissezVibrer r16 r8. }
      }
    }
  >> |
  \repeat unfold 8 { s4.\sustainTap } |

  % 41--48
  \tag #'layout {
    \repeat unfold 2 { \voiceOne \appoggiatura { e'32 d } e4.( \oneVoice d8 g b) } 
    \voiceOne \appoggiatura { e,32 d } e4. \oneVoice \appoggiatura { d32 c } d4.
    \repeat unfold 2 { \voiceOne \appoggiatura { d32 c } d4.( \oneVoice c8 f a) }
    \voiceOne \appoggiatura { d,32 c } d4. \oneVoice \appoggiatura { c32 bes } c4.
    \appoggiatura { a32 g } a4. \clef "bass" s4.
    \repeat unfold 2 { e16( d \dO a \dT b d fis) }
  }
  \tag #'midi {
    \repeat unfold 2 { e'32 d e8~ 8.( d8 g b) } 
    e,32 d e8~ 8. d32 c d8~ 8.
    \repeat unfold 2 { d32 c d8~ 8.( c8 f a) }
    d,32 c d8~ 8. c32 bes c8~ 8.
    a32 g a8~ 8. \clef "bass" s4.
    \repeat unfold 2 { e16( d \dO a \dT b d fis) }
  } |
  \clef "treble"
  \repeat unfold 3 {
    \grace { s16 } \toUpperStem e'''16_( a, \dO d, \dT \toLowerStem e c a f g \dO b \dT d e g)
  }
  \repeat unfold 3 {
    \toUpperStem d'16_( g, \dO c, \dT \toLowerStem d bes g ees f \dO a \dT c d f)
  }
  \toUpperStem a16_( fis \dO d \dT \toLowerStem b a fis \toUpperStem \clef "bass" e d \dO a \dT \toLowerStem \clef "bass" b d fis
  \oneVoice \stemDown 
  a8-.)\laissezVibrer r16 r8. r4. \stemNeutral |
  \repeat unfold 2 {
    \repeat unfold 2 { s2.\sustainTap }
    \repeat unfold 2 { s4.\sustainTap }
  }
  s2.\sustainTap s2. |

  % 49--52
  \repeat unfold 2 {
    \oneVoice \repeat unfold 2 { e16( d \dO a \dT b d fis) }
    \tag #'layout {
      \voiceOne \repeat unfold 2 { \appoggiatura { e32 fis } e16( d e~ 8.) } 
    }
    \tag #'midi {
      \voiceOne \repeat unfold 2 { e32 fis e d e16~ 8. }
    }
  } |
  \stemDown
  \repeat unfold 2 { a8-.\laissezVibrer r16 r8. }
  <<
    {
      \repeat unfold 2 {
	\tag #'layout {
	  \toUpperStem \appoggiatura { \voiceTwo < a e' >16 \oneVoice \stemDown } a16_( \toLowerStem g \dO d \dT e g b)
	}
	\tag #'midi {
	  a16_( \toLowerStem g \dO d \dT e g b)
	}
      }
    } \\
    { \repeat unfold 2 { g,8-.\laissezVibrer r16 r8. } }
  >>
  <<
    { \repeat unfold 2 { a'8-.\laissezVibrer r16 r8. } } \\
    { d,2. }
  >>
  <<
    {
      \repeat unfold 2 {
	\tag #'layout {
	  \toUpperStem \appoggiatura { \voiceTwo < a' e' >16 \oneVoice \stemDown } a16_( \toLowerStem a, \dO d \dT e g b)
	}
	\tag #'midi {
	  a16_( \toLowerStem a, \dO d \dT e g b)
	}
      }
    } \\
    { \repeat unfold 2 { c,,8-.\laissezVibrer r16 r8. } }
  >> |
  \repeat unfold 2 { s2. \repeat unfold 2 { s4.\sustainTap } } |

  % 53--55
  \clef "treble"
  \repeat unfold 2 {
    \tag #'layout {
      \appoggiatura { \voiceTwo \stemUp bes'32 a \voiceOne } bes4.( d,8 g c) 
    }
    \tag #'midi {
      % l.h. hitting bes, plus it's grooving around
      s32 a bes8~ 8.( d,8 g c) 
    }
  }
  \clef "bass" 
  \grace { s16 }
  <<
    {
      \tag #'layout {
	\appoggiatura { < aes, e'>16 } e'4. \appoggiatura { < aes, ees' >16 } ees'4. 
      }
      \tag #'midi {
	e4. ees4. 
      }
    } \\
    {
      % l.h. hitting it
      \tag #'layout \repeat unfold 2 {
	\shiftOff
	\omit Beam
	aes,16^( g aes^~ \undo \omit Beam \noBeam 8.)
      }
    }
  >> |
  \clef "treble"
  \grace { s16 }
  \repeat unfold 2 {
    \toUpperStem bes'''16_( fis \dO e \dT \toLowerStem d bes fis \clef "bass" \stemDown c g' \dO bes \dT \once \override Staff.Clef.whiteout = #3 \clef "treble" \stemUp d e g) 
  }
  \clef "bass"
  \grace { s16 }
  \tag #'layout {
    \shiftOff
    \toUpperStem \appoggiatura { \voiceTwo aes,32[ bes] } aes16_( g \dO aes \dT \toLowerStem e c f,)
    \toUpperStem \appoggiatura { \voiceTwo aes'32[ bes] } aes16_( g \dO aes \dT \toLowerStem ees c f,)
  }
  \tag #'midi {
    aes'32[ bes] g16 \dO aes \dT \toLowerStem e c f,
    aes'32[ bes] g16 \dO aes \dT \toLowerStem ees c f,
  } |
  \repeat unfold 2 { s4.\sustainOff s4.\sustainTap } \repeat unfold 2 { s4.\sustainTap }|

  % 56--58
  \clef "treble"
  \repeat unfold 2 {
    \tag #'layout {
      \appoggiatura { aes'32 g } aes4.( c,8 f bes) 
    }
    \tag #'midi {
      % l.h. hitting bes, plus it's grooving around (yes I did just copy the
      % previous 3 measures deal with it)
      s32 g aes8~ 8.( c,8 f bes) 
    }
  }
  \clef "bass" 
  \grace { s16 }
  <<
    {
      \tag #'layout {
	\appoggiatura { < ges, d'>16 } d'4. \appoggiatura { < ges, des' >16 } des'4. 
      }
      \tag #'midi {
	d4. des4. 
      }
    } \\
    {
      % l.h. hitting it
      \tag #'layout \repeat unfold 2 {
	\shiftOff
	\omit Beam
	ges,16^( f ges^~ \undo \omit Beam \noBeam 8.)
      }
    }
  >> |
  \clef "treble"
  \grace { s16 }
  \repeat unfold 2 {
    \toUpperStem aes''16_( e \dO b \dT \toLowerStem d aes f \clef "bass" \stemDown bes, f' \dO aes \dT \once \override Staff.Clef.whiteout = #3 \clef "treble" \stemUp c d g) 
  }
  \clef "bass"
  \grace { s16 }
  \tag #'layout {
    \shiftOff
    \toUpperStem \appoggiatura { \voiceTwo ges,32[ aes] } ges16_( f \dO ges \dT \toLowerStem d bes ees,)
    \toUpperStem \appoggiatura { \voiceTwo ges'32[ aes] } ges16_( f \dO ges \dT \toLowerStem des bes ees,)
  }
  \tag #'midi {
    ges'32[ bes] f16 \dO ges \dT \toLowerStem d bes ees, 
    ges'32[ bes] f16 \dO ges \dT \toLowerStem des bes ees, 
  } |
  \repeat unfold 2 { s4.\sustainOff s4.\sustainTap } \repeat unfold 2 { s4.\sustainTap } |

  % 59--60
  \tag #'layout {
    <<
      {
	\appoggiatura { \stemDown s32 \once \hide Stem ais } \stemUp ais4. s4.
	\appoggiatura { \stemDown s32 \once \hide Stem ais' } \stemUp ais4. s4.
      } \\
      {
	\appoggiatura { dis,,32 ais' } dis,16^( cis dis)^( s8. s4.)
	\appoggiatura { dis'32 ais' } dis,16^( cis dis)^( s8. s4.)
      }
    >>
  }
  \tag #'midi {
    dis,32 ais' dis, cis dis16~ 8.~ 4.~
    dis'32 ais' dis, cis dis16~ 8.~ 4.~
  } |
  gis,16( dis' \dO fis \dT b \toUpperStem dis fis) \toLowerStem dis,( b' \dO fis' \dT \toUpperStem gis b cis)
  \toLowerStem gis,16( dis' \dO fis \dT b \toUpperStem dis fis) \toLowerStem dis,( b' \dO fis' \dT \toUpperStem \clef "treble" gis b cis)
  |
  \repeat unfold 2 { s2.\sustainTap }|

}


