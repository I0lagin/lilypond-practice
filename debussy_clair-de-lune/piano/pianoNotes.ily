\version "2.24.4"

blank = { s1*9/8 }

\parallelMusic pianoUpper,pianoLower,pianoPedal {

				% these *Bars in parallel music which don't have the same length* are *Pissing* me off....
				% I'm the original   *Starwalker*
				% (probably the tags)

  \set Score.skipTypesetting = ##f
				%1
  << %slur from m3 to m4
    {
      \oneVoice \key des \major \clef treble
      r8
      \shape #'((0 . 0) (0 . 3) (0 . 2) (0 . 0)) Slur
      r8^( s8 s4. < des''_~ f^~ >4.) } \\
    { }
 >> |
  \key des \major \clef treble r8 <<
    { < f' aes >8 \toUpper < f'_~ aes^~ > q4. s4.  } \\
    { \tag #'layout { \once \hideNotes  < f,_~ aes^~ >8 \once \stemUp q2. }  }
  >> |
  \blank \sustainOn |
  
				%2
  <<
    { \oneVoice < des f >8^( < c ees > < des f > < c_~ ees^~ >2.) } \\
    { }
  >> |
  < ges_~ a^~ >2. q4. |
  \blank \sustainTap |

				%3
  <<
    {
      \oneVoice < c ees >8^( < bes des > < c ees >
      \voiceOne
      \tuplet 2/3 { des8 f^~ }
      \tuplet 2/3 { f des^~ }
    } \\
    { s4. bes2._~ }
  >> |
  < f_~ aes^~ >2. q4. |
  \blank \sustainTap |

  \mBreak

				%4

  <<
    {
      \tag #'layout { < bes des >8 }
      \tag #'midi { des8 }
      < aes c >8 < bes des > < aes c^~ >2.)
    } \\
    { \once \hideNotes bes8 s8 s8 s2. }
  >>  |
  < ees_~ ges^~ >2. q4.|
  \blank \sustainTap |

				%5
  <<
    { c8^( bes c bes ees bes aes bes aes^~ } \\
    { ges2. ges4. }
  >> |
  <<
    { ees2. ees4. } \\
    { des2. c4. }
  >> |
  s2.\sustainTap s4.\sustainTap |

				%6
  <<
    { aes8 ges aes ges4. f)^~ } \\
    { ees2. ees4. }
  >> |
  <<
    { des2. c4. } \\
    { bes2. a4. }
  >> |
  s2.\sustainTap s4.\sustainTap |

				%7
  <<
    { f8^( f ges f bes f ees f ees_~ } \\
    { des2._~ des4.  }
  >> |
  \clef bass <<
    { bes2.^~ bes4. } \\
    { aes2. ges4. }
  >> |
  s2.\sustainTap s4.\sustainTap |

  \mBreak
				%8 tag_shit
  <<
    { ees8 des ees des4. c  } \\
    { bes2. aes4. }
  >> |
  <<
    { aes2. ges4. } \\
    { f2. \tuplet 2/3 { ees8
			\tag #'layout { aes,^~ }
			\tag #'midi { aes, }
		      }}
  >> |
  s2.\sustainTap s4.\sustainTap |

				%9 %tag_shit
  <<
    { \oneVoice s4. < f'' aes >4. < des_~ f^~ >) } \\
    { }
  >> |
  <<
    {
      \tag #'layout { \once \override Beam.positions = #'(3.2 . 3.5) < des aes' >8 }
      \tag #'midi des8
      \toUpper < f' aes >8 \toLower
				% \once \override Staff.Clef.Y-offset = -2
      \clef treble < f'_~ aes^~ >8 q2.
    } \\
    {
      \tag #'layout { \once \stemUp \once \hideNotes aes,,8 s4 s2. }
    }
  >> |
  \blank \sustainTap |
  
				%10
  <<
    { < des f >8^( ees f ees2.)^~  } \\
    { r8 < ges, bes >4_~ q2.  }
  >> |
  \clef bass  <<
    { r8 < des ges bes des >4^~ q2. } \\
    { < ges, des' >2. s4. }
  >> |
  \blank \sustainTap |

				%11
  <<
    { ees'8^( < des, des' > < ees ees' > < aes des aes' >4. < f des' f^~ >)  } \\
    { r8 aes4 s2. }
  >> |
  <<
    { r8 < f' aes >4^( < des' f >4. < aes des >4.)  } \\
    { < f, des' >2. s4. }
  >> |
  \blank \sustainTap |

  \mBreak

				%12
  <<
    { f'8^( ees f ees4. des4.^~) } \\
    { s8 < ges, bes >4_~ q2. }
  >> |
  <<
    { r8 < des' ges bes des >4^~ q2. } \\
    { < ges, des' >2. s4. }
  >> |
  \blank \sustainTap |

				%13
  <<
    {
      des'8^( < des, des' > < ees ees' >
      \tuplet 2/3 { < bes' bes' >8 < aes_~ aes'^~ > }
      \tuplet 2/3 { q8 < f f'^~ > }
    } \\
    { s8 aes4 f'2. }
  >> |
  <<
    { r8 < f' ces' >4 < ces'!_~ des^~ f^~ >4. q8 r r } \\
    { aes,2._~ 4. }
  >> |
  \blank \sustainTap |

				%14
  <<
    { f8 ees f \tuplet 2/3 { ees8 des^~ } \tuplet 2/3 { des8 bes) }  } \\
    { r8 < f bes >4_~ q2. }
  >> |
  <<
    { r8 ees''4^~ \tuplet 2/3 { ees8 des^~ } des4 } \\
    { bes,2 s4 s4.  } \\
    { \voiceFour s8 < f' bes >4_~ q2.  }
  >> |
  \blank \sustainTap |

  \pBreak
  \set Score.skipTypesetting = ##f
				%15-16
  \tupletUp \override TupletBracket.bracket-visibility = ##f
  \tuplet 2/3 { r8 < f'_~ bes^~ f'^~ >^-^( }
  q < ees bes' ees >^- q^-
  q^- < des bes' des >^- q^-
  q^- < c ges' bes c >^- q^-
  \tuplet 2/3 { q^- < des bes' des >^- } < bes ges' bes >4.^-) |
  <<
    {
      \override TupletBracket.bracket-visibility = ##f
      \tuplet 2/3 { r8 \clef treble < f'_~ ges^~ bes^~ >8_-_( }
      q8 < ees ges bes >_- q_-
      q_- < des ges bes >_- q_-
      q_- < c ges' bes >_- q_-
      \tuplet 2/3 { q_- < des ges bes >_- } < bes des ges >4._-)
    } \\
    { \clef bass < ees,,, ees' >2. s4. \blank }
  >> |
  \blank \sustainTap \blank |

				%17-18 phrasing slur does some wonky indenting here
  \tuplet 2/3 { r8 < f'_~ bes^~ f'^~ >^-^\( }
		q < ges bes ges' > < f bes f' >
		< ees bes' ees > < f bes f' > < ees bes' ees >
		\mBreak
		< des bes' des > < ees bes' ees > < des bes' des >
		\omit TupletNumber		
		\tuplet 2/3 {
		  < c bes' c >
		  \slashedGrace {
		    \shape #'((-0.3 . -0.4) (0 . -1) (0 . -1) (0 . -0.5)) Slur
		    ees'_(
		  } < des, bes') des >
		}
		\tuplet 2/3 { < bes_~ ges'^~ bes^~ >4\) } |
  <<
    {
      \tuplet 2/3 { r8 \clef treble < f'''_~ ges^~ bes^~ > }
      q < ges bes ees > < f ges bes >
      < ees ges bes > < f ges bes > < ees ges bes >
      < des ges bes > < ees ges bes > < des ges bes >
      \tuplet 2/3 { < c ges' bes > < des ges bes > }
      \omit TupletNumber
      \tuplet 2/3 { < bes ees ges >4 }
    } \\
    { \clef bass < ees,,, ees' >2. s4. \blank  } \\
    \omit TupletNumber
    \tuplet 2/3 { bes''2 } s2. \blank % can't get "m.d." to work here
  >> |
  \blank \sustainTap \blank |

				%19
  \tuplet 6/9 { < bes ges' bes >8^( < ges ges' > < aes ees' aes > < c c' > < bes ges' bes > < ges ges' >) } |
  <<
    { \clef bass s4. < c' ees > < ees ges >   } \\
    { < aes,,, aes' >2. s4. } \\
    { %tuplet number stuff
      \stemDown \omit TupletBracket
      \once \override TupletNumber.X-offset = 9
      \once \override TupletNumber.Y-offset = -4.2
      \tuplet 6/9 { r8 ges''_([ aes c bes ges)]  }
    }
  >> |
  \blank \sustainTap |

				%20
  r8 < ges c ees ges >^-^( q^- q^- q^- < aes! c ees aes! >^- < ges c ees ges >4.^-) |
  <<
    { \stemDown r8 < ges c ees >^( q q q < aes! c ees > < ges c ees >4.)  } \\
    { < a,, a' >2. s4.  }
  >> |
  \blank \sustainTap |

  \mBreak

				%21
  <<
    {
      \omit TupletNumber \omit TupletBracket
      \tuplet 6/9 { b8\rest < ges ges' >^([ < aes aes' > < des des' > < bes bes' > < ges ges' >)] }
    } \\
    {
      \omit TupletNumber \omit TupletBracket
      \tuplet 6/9 { s8 des'4. ges4 }
    }
  >> |
  <<
    { \tuplet 6/9 { r8 < bes'' des >4. < des ges >4  }  } \\
    { < bes,, bes' >2. s4. } \\
    {
      \stemDown
      \omit TupletNumber \omit TupletBracket
      \tuplet 6/9 { r8 ges''_([ aes des bes ges)] }
    }
  >> |
  \blank \sustainTap |

				%22
  r8 < ges, bes ees ges >^-^( q^- q^- q^- < aes c f aes >^- < ges bes ees ges >4.^-) |
  <<
    { \stemDown r8 < ges bes ees >^-^( q^- q^- q^- < aes c f >^- < ges bes ees >4.^-) } \\
    { < c,, c' >2. s4. }
  >> |
  \blank \sustainTap |

				%23
  <<
    {
      \omit TupletNumber \omit TupletBracket
      \tuplet 6/9 { b8\rest < ges ges' >^([ < aes aes' > < ees' ees' > < des des' > < bes bes' >)] }
    } \\
    {
      \omit TupletNumber \omit TupletBracket
      \tuplet 6/9 { s8 < bes des >4. < ges' bes >4 }
    }
  >>  |
  <<
    {
      \omit TupletNumber \omit TupletBracket
      \tuplet 6/9 { r8 < bes'' des >4. < ges' bes >4 }
    } \\
    { < des,, des' >2. s4.  } \\
    {
      \omit TupletNumber \omit TupletBracket
      \stemDown \tuplet 6/9 { r8 ges'[ aes ees' des bes] }
    }
  >> |
  \blank \sustainTap |

  \mBreak

				%24
  r8 < bes, ges' bes >^( q q q < c aes' c > < bes ges' bes > < des bes' des > < ees bes' ees >) |
  <<
    { \stemDown r8 < bes des ges > q q q < c ees aes > < bes des ges > \clef treble < des ges bes > < ees ges bes > } \\
    { < ees,, ees' >2. s4.  }
  >> |
  \blank \sustainTap |

				%25-26
				% watch This
  \tag #'layout {
    \ottava 1  < aes des aes' >2.^-\arpeggio q4.^-\arpeggio q2.^-\arpeggio
    \ottava 0 < aes, ees' aes >4.\arpeggio |
    \stemDown
    < f'' aes des f >2.^-^(\arpeggio < fes aes bes des fes >4.^-\arpeggio < ees ges aes des ees >2.^-)\arpeggio
    \stemNeutral < aes, ees' ges c >4.\arpeggio |
    s2.\sustainTap s4.\sustainTap s2.\sustainTap s4.\sustainTap
  }
  \tag #'midi {
    \tuplet 7/1 { s8 s s s aes' des aes' } s8 s2
    \tuplet 8/1 { s8 s s s s aes, des aes' } s4
    \tuplet 8/1 { s8 s s s s aes, des aes' } s8 s2
    \tuplet 7/2 { s8 s s s aes, ees' aes } s8 |

    \tuplet 7/1 { f'8 aes des f s s s } s8 s2
    \tuplet 8/1 { fes,8 aes bes des fes s s s } s4
    \tuplet 8/1 { ees,8 ges aes des ees s s s } s8 s2
    \tuplet 7/2 { aes,,8 ees' ges c s s s } s8 |

    s2.\sustainTap s4.\sustainTap s2.\sustainTap s4.\sustainTap |
  }

  \mBreak
				%27
  <<
    { < f,, aes >2.^( ces'4 des8)  } \\
    { s2. aes4. }
  >> |
  \clef bass \mergeDifferentlyDottedOn <<
    {
      des,,,16_( aes' des f \toUpper aes des) \toLower
      f,,_( c' f \toUpper aes c f) \toLower
      aes,,_( fes' aes \toUpper ces fes aes) \toLower
    } \\
    {
      \tag #'layout { des,,,4. f aes }
      \tag #'midi { s2. s4. }
    }
  >> |
  s4.\sustainTap s4.\sustainTap s4.\sustainTap |
  
				%28
  \stemUp < f aes >2.^( < aes ces >4
  \tag #'layout { aes8) }
  \tag #'midi { r8) }
  |
  <<
    {
      des,16_( aes' des f \toUpper aes des) \toLower
      f,,_( c' f \toUpper aes c f) \toLower
      aes,,_( fes' aes \toUpper ces aes' fes) \toLower
    } \\
    { \tag #'layout { des,,4. f aes } }
  >> |
  s4.\sustainTap s4.\sustainTap s4.\sustainTap |

  \pBreak
  \set Score.skipTypesetting = ##f
				%29-30 felt like it
  %these are some weird stems
  \stemUp < f des' >4^( < aes ees' >8 \stemNeutral < des f >4. < f, des' >4 < des' f >8)
  < ees g >8^( < des f > < bes des > \stemUp q4.) r4 r8 \stemNeutral |
  des,16^( aes' des f aes des f aes f des aes f aes f des aes des aes)
  <<
    { s4. g''8_( \toUpper f des des8. bes) } \\
    { ees,,16_( bes' ees g bes ees g16 ees bes g ees bes ees, bes' ees g ees bes) }
  >> |
  \blank \sustainTap \blank \sustainTap |

  \mBreak

				%31-32
  \repeat unfold 2 {
    <<
      { bes2.^( c4 f8) } \\
      { s2. s4 aes,16 f }
    >> |
    <<
      {
	\toLower
	aes16_( ees' ges bes \toUpper c ges') \toLower
	ges,,_( des' ges bes \toUpper des ges) \toLower
	f,,_( c' f aes c8)
      } \\
      {
	\tag #'layout { aes,4. ges f  }
	\tag #'midi \blank
      }
    >> |
    \repeat unfold 3 s4.\sustainTap
  }

  \mBreak
				%33-34
  <<
    {
      ges'4.^~^(
      \once \omit TupletNumber
      \once \omit TupletBracket
      \tuplet 4/6 { ges8[ f d ees] } bes'2. aes4.)
    } \\
    {
      \tag #'layout { s4. ges16 ges, bes f' ges, bes d ges, bes ees ges, bes \blank }
      \tag #'midi { s4. s16 ges bes s ges bes s ges bes s ges bes \blank }
    }
  >> |
  <<
    {
      ees16_( bes' ees ges bes ees)
      \once \omit TupletNumber \tuplet 4/6 { ges8^(_[ f d ees)] }
      \clef treble d16_( ges bes \toUpper bes ges' bes) \toLower
      ees,,_( ges bes \toUpper bes ges' bes) \toLower
      c,,_( e aes \toUpper c e aes) \toLower
    } \\
    {
      \tag #'layout { ees,,,4. } \tag #'midi { s4. } % oh i could just do this
      s2.
      \tag #'layout { d''4. ees aes, }
      \tag #'midi { s2. aes4. }
    }
  >> |
  \blank \sustainTap \repeat unfold 3 s4.\sustainTap |

  \mBreak
				%35-36

  \stemUp < f' aes >2.^( < aes! ces >4 des8)
  < f, aes >2.^( < gis b >4
  \tag #'layout gis!8)
  \tag #'midi s8)
  |
  <<
    {
      \clef bass
      des,16_( aes' des f \toUpper aes des) \toLower
      aes, c f \toUpper aes c f \toLower
      ces, fes aes \toUpper ces fes aes \toLower
      des,,,16 aes' des f \toUpper aes des \toLower
      aes, c f \toUpper aes c f \toLower
      b,, e gis \toUpper b gis' e
    } \\
    {
      \tag #'layout { des,,4. f aes des, f gis }
      \tag #'midi { s4. f aes s f gis }
    }
  >> |
  \repeat unfold 6 s4.\sustainTap |

  \mBreak
  \bar "||"
				%37
  \key cis \minor \mergeDifferentlyDottedOn <<
    {
      \tag #'layout { cis4^( gis8) e'4^( cis8) gis'4^( e8) }
      \tag #'midi { \blank }
    } \\
    {
      cis8.[ cis,16 gis' e]
      e'8.[ e,16 cis' gis]
      gis'8.[ gis,16 e' b]
    }
  >> |
  \clef treble \key cis \minor
  <<
    {
      cis16_([ e gis b8.)]
      e,16_([ gis b cis8.)]
      gis16_([ b cis e8.)]
    } \\
    { \once \override NoteColumn.force-hshift = #-1.5 b,4. cis e }
  >> |
  \repeat unfold 3 s4.\sustainTap |

				%38
  gis'4.^( fis2.) |
  <<
    {
      gis16_( a cis \toUpper gis' cis a) \toLower
      \repeat unfold 2 { fis,_( a cis \toUpper f cis' a) \toLower }
    } \\
    {
      \tag #'layout { gis,4. fis }
      \tag #'midi { s2. }
      \once \override NoteColumn.force-hshift = #-1.5 eis4.
    }
  >> |
  \repeat unfold 3 s4.\sustainTap |

  \pBreak
				%39-40
  \tag #'layout { fis2.^( a4 cis8) fis,,2.^( a4 cis8) }
  \tag #'midi   { fis2.^( a4 r8)   fis,2.^( a4 cis8)   } |
  <<
    {
      \repeat unfold 2 { fis16_( a cis \toUpper fis cis' a) \toLower }
      gis,_( a cis e \toUpper cis'' cis,) \toLower
      b,,_( dis fis \toUpper fis cis' a) \toLower
      a,_( cis e \toUpper fis cis' a) \toLower
      gis,_( cis e a \toUpper e' a)
    } \\
    {
      \tag #'layout { \once \override NoteColumn.force-hshift = #-1.5 e,!4. dis cis b a gis  }
      \tag #'midi { e'!4. dis cis \blank }
    }
  >> |
  \repeat unfold 6 s4.\sustainTap |

  \mBreak
				%41-42
  <<
    {
      \stemDown < cis e >8^( < b dis > < a cis >
      \tuplet 2/3 { < gis b > < fis_~ a^~ > }
      q < e gis > < dis fis >)
      \stemUp < cis e >8^( < b dis > < a cis >
      < gis b > < fis a > < e gis >^~
      q < dis fis > < cis e >)
    } \\
    { \blank s2. a4. }
  >> |
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  <<
    {
      fis,16 cis'_( e fis a cis
      e fis e cis a fis)
      e_( fis e cis a fis)
      \oneVoice \clef bass fis,^( cis' e fis a cis
      e cis a fis e cis)
      fis,_( cis' fis, cis' fis, cis')
    } \\
    {
      \tag #'layout { fis2._~ 4. \blank }
      \tag #'midi { \blank \blank }
    }
  >> |
  \blank\sustainTap s2.\sustainTap s4.\sustainTap |

  \mBreak
				%43-46
				%mBreak in m45
  \key des \major <<
    {
      < des ees >2.^( < ees ges >4 < ees ges bes >8)
      < des ees >2.^( < ees ges >4 < ees ges_~ bes^~ >8)
      \mBreak
      \repeat unfold 2 { < des ges bes >8^( < aes' c f > < ges bes ees > < ges bes >4. < ges aes >) }
    } \\
    {
      \repeat unfold 2 { ges,4_( aes8 bes4 des8 c4.) }
      \repeat unfold 2 { s4. des8 bes des bes c ees }
    }
  >> |
  \key des \major \stemDown
  aes,16^( ees' \repeat unfold 16 { aes, ees' } aes, ees')
  aes,^( ees aes ees' aes, ees'
  aes ees aes ees' aes, ees
  aes ees aes, ees' aes, ees)
  aes^( ees aes ees' aes, ees'
  aes ees aes ees' aes, ees
  aes ees aes ees aes ees) |
  \repeat unfold 4 { s2.\sustainTap s4.\sustainTap  } |

  \mBreak
				%47-50
				%pBreak at 49
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \repeat unfold 2 <<
    {
      \tag #'layout { ees'2.^( }
      \tag #'midi   { s2.^( }
      ges4 bes8)
    } \\
    { ees,16 ees,^( ges bes ges ees) r16 ees^( ges bes ges ees) s4.  }
  >>
  \pBreak
  ees''2.^~^( 4.^~ 4. des ees) |
  \repeat unfold 2 <<
    { des'2. c16_( ees ges bes \toUpper c ees) \toLower  } \\
    {
      ges,,4_( aes8 bes4 des8
      \tag #'layout { c4.) }
      \tag #'midi   { r4. }
    }
  >> 
  \clef treble <<
    {
      ges'16^( bes des \toUpper ees ges bes) \toLower
      ges,^( bes des \toUpper ees ges c) \toLower
      ges,^( bes des \toUpper ees ges bes) \toLower
      ges,^( a des \toUpper ees ges a) \toLower
      ges,^( a des \toUpper ees ges ces) \toLower
      ges,^( a des \toUpper ees ges a) \toLower
    } \\
    {
      \tag #'layout { ges,2._~ 4. 2. 4. }
      \tag #'midi { \blank \blank }
    }
  >> |
  s2.\sustainTap s4.\sustainTap
  s2.\sustainTap s4.\sustainTap
  \repeat unfold 6 s4.\sustainTap |

  \mBreak
				%51-54
				%mBreak at 53
  r4 r8 s2.
  \blank \mBreak \blank \blank |
  <<
    {
      \tupletDown
      \shape #'((1.3 . 4) (3 . 3) (-2 . -8) (-0.5 . -5)) Slur
      \once \hideNotes f4.\rest^( \toUpper \ottava 1 < f'' aes >4.)^( f4._~
      8 < c ees > < des f > < c_~ ees^~ >2.)
      q8^( < bes des > < c ees > \tuplet 2/3 { < bes des >8 < des_~ f^~ > } \tuplet 2/3 { q8 < bes_~ des^~ > }
      q8 < aes c > < bes des > < aes c >2.) \ottava 0
    } \\
    {
      \tag #'layout
      {
	\repeat unfold 3 { f,2._- 4._- }
	ees2._- 4.
      }
      \tag #'midi
      {
	\repeat unfold 3 { s2. f4._- }
	s2. ees4.
      }
    } \\
    {
      f16 aes c f aes c r4 r8 r4 r8
      f,,16_( a c ees f a) r4 r8 s4.
      f,16_( aes! bes des f aes) r4 r8 r4 r8
      ees,16_( ges aes c ees ges) r4 r8 r4 r8
    } 
  >> |
  \repeat unfold 4 s1*9/8\sustainTap |

  \mBreak
  %%55-58
  %%mBreak at 57
  r8 <<
    {
      \stemDown < ges, bes >8^( < aes c > \stemUp bes ees bes aes bes aes)^~
      \stemDown
      \tag #'layout < f aes >8
      \tag #'midi aes8
      < ees ges > < f aes > < ees ges >4. < a, f'^~ >
      \mBreak
      \shape #'((0 . 0) (0 . 0) (0 . 0) (9 . -1)) Slur
      \stemUp f'8^( < des f > < ees ges > f bes f ees f ees^~
      ees8 < bes des > < c ees > < bes des >4. < aes c >)
    } \\
    {
      s4 ges'4. f_~
      \once \hideNotes f8 s4 s2.
      s4. des4. des
      \blank
    }
  >> |
  \set Staff.connectArpeggios = ##t
  \mergeDifferentlyHeadedOn
  <<
    {
      \tag #'layout { des,16_( ees ges bes des ees) bes4\rest bes8\rest < ees, f aes c >4.\arpeggio }
      \tag #'midi { des16_( ees ges bes des ees) bes4\rest bes8\rest \tuplet 7/1 { r8 ees, f aes c r r } r4  }

      \clef bass c,,16_( ges' bes c ees ges) bes4. < c, ees >
      
      \clef treble
      \tag #'layout { aes16_\(_( bes des f aes bes) bes4\rest bes8\rest < ges, bes des ees >4.\arpeggio\) }
      \tag #'midi { aes16_( bes des f aes bes) bes4\rest bes8\rest \tuplet 7/1 { ges,8 bes des ees r r r } r4 }
      \clef bass f,16_( aes bes des f aes) des,,4\rest des8\rest \voiceOne < ges c >4.
    } \\
    {
      \tag #'layout
      {
	des'2._( c4.)\arpeggio
	c,2._( f4.)
				%original had this part \stemUp'd but that won't display the right notehead-- go down it will
	aes2. s4.
	\omit TupletNumber
	f2. \tuplet 2/3 { ees8 aes, }
      }
      \tag #'midi
      {
	s2. \tuplet 7/1 { c'8 r r r r r r } r4
	s2. f,4.
	\blank
	s2. \tuplet 2/3 { ees8 aes, }
      }
    }
  >> |
  \repeat unfold 2
  {
    s2.\sustainTap s4.\sustainTap
    s2. s4.\sustainTap
  } |

  \pBreak
				%59-62
				%mBreak at 62
  <<
    {
				% nah i ain't sending that to pianoLower
				% i know a guy...
      \shape #'((1 . -6) (1 . -2) (0 . -2) (-1 . -1)) Slur
      \oneVoice r4^( r8 < f aes >4.)^\(^( < des_~ f^~ >4.)
					\voiceOne q8 ees f ees2.\)^~
      ees8 < des, des' >^( < ees ees' > < aes f' aes >4. < f des' f^~ >
      \mBreak
      f'8 ees f ees4. des)
    } \\
    {
      \blank
      s8 < ges, bes >4_~ q2.
      s8 aes4 s2.
      r8 < f bes >4_~ q2.
    }
  >> |
  \mergeDifferentlyHeadedOn
  \override NoteColumn.ignore-collision = ##t
  <<
    {
      \once \override Beam.positions = #'(3.2 . 3.5)
      \once \hide NoteHead
      < des, aes' >8 \toUpper < f' aes > \toLower \clef treble < f' aes >^~ q2.
      \clef bass r8 < des, ges bes des >4^~ q2.
      r8 < f aes >4 < des' f >4. des
      r8 ees4^~ 4. des4.
    }\\
    {
      \tag #'layout { < des,, aes' >2 s4 s4. }
      \tag #'midi { \blank }
      < ges des' >2 s4 s4.
      aes2. s4.
      bes2 s8 s4.
    }\\
    {
      \stemDown s4. ces'2._>
      \blank
      s4. ces4._~ ces4.
      s8 < f, bes >4_~ q2.
    }
  >> |
  \repeat unfold 4 {\blank\sustainTap} |

				%63-65
  <<
    {
      bes8\rest des,^( ees < des f bes >4. < aes des f >)
      bes'8\rest ges^( aes des4. bes)
      bes8\rest bes^( c f4. < c, ges' aes >4.)
    } \\
    {
      s8 aes4_( \once \hideNotes ees'4.\rest) s4.
      s8 < bes des >4_( < ges' bes >4.) < des ges >
      s8 < c ges' >4 < aes' c >4. s4.
    }
  >> |
  <<
    {
      \omit TupletNumber
      f,2._~ 4.
      \stemDown s4. ees'4.^( ees')
      \stemUp \tuplet 2/3 { aes,,8^( ees' } \clef treble aes''4. \clef bass \stemDown aes,,)
    } \\
    {
      \blank
      ees,2. s4.
      \tag #'layout { aes2. s4. }
      \tag #'midi { \blank }
    }
  >> |
  \repeat unfold 6 s4.\sustainTap
  \blank\sustainTap |

  \mBreak
				%64-68 mBreak at 66 and 68
  <<
    { } \\ %using this voice interferes with pianoLower
    {
      \blank
      \voiceOne
      bes4\rest des8\rest ces4.^( des4.)
      \mBreak
      \blank
      s4. ces'4.^( des4.)
      \mBreak
      ces4.^( des fes)
    } \\
    {
      \blank
      \voiceTwo
      s4. aes,,4. fes
      \blank
      s4. aes'2.
      aes2. s4.
    }
  >> |
  <<
    {
      des,16^( aes' des f \toUpper aes des) \toLower
      f,,^( c' f \toUpper aes c f) \toLower
      des,,^( aes' des f \toUpper aes des) \toLower
      f,,^( c' f \toUpper aes c f) \toLower
      aes,,_( fes' aes ces fes ges! aes4.)

      des,,16^( aes' des f \toUpper aes des) \toLower
      f,,^( c' f \toUpper aes c f) \toLower
      des,,^( aes' des f \toUpper aes des) \toLower
      f,,^( c' f \toUpper aes c f) \toLower
      \clef treble aes,,_( ces fes aes ces fes^~ fes4.)

      aes,,16_( ces fes aes ces fes^~ fes4.) \clef bass aes,,,4.
    } \\
    {
      \tag #'layout {
	des,4. f des f aes2.
	des4. f des f aes2.
	aes
      }
    }
  >> |
  \repeat unfold 2
  {
    \repeat unfold 4 s4.\sustainTap s2.\sustainTap 
  }
  s2.\sustainTap s4.\sustainTap
  |

				%71
  \oneVoice < f'!_~ aes^~ >2. q4. |
  <<
    {
      des,,16^( aes' des f aes des
      \stemDown \clef treble f8 aes des f aes des)
    } \\
    { \tag #'layout { des,,,,2. s4. } }
  >> |
  \blank\sustainTap |

				%72
  \tag #'layout { < aes, des f aes >2.\arpeggio }
  \tag #'midi { \tuplet 10/1 { s1 s1 aes2 des f aes s1 } r4  }
  r4 r8 \fine|
  \tag #'layout { < des'' aes' des f >2.\arpeggio }
  \tag #'midi { \tuplet 10/1 { des2 aes' des f s1 s1 s1 } r4 }
  r4 r8 \fine |
  \blank \fine |

  
}