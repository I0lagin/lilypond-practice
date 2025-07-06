\version "2.24.4"

blank = { s1*9/8 }

% https://youtu.be/iyFVtI-bvAY?si=sIN9LRAeVLG8KQ5a

\parallelMusic pianoUpper,pianoLower,pianoPedal {

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
				% ignore `Bars in parallel music don't have the same length`-- lilypond is just flabbergasted at these tags and ties
				% same occurences will have a comment "tag_shit"
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
    \tuplet 7/2 { s8 s s s aes' des aes' } s4
    \tuplet 8/2 { s8 s s s s aes, des aes' } s8
    \tuplet 8/2 { s8 s s s s aes, des aes' } s4
    \tuplet 7/2 { s8 s s s aes, ees' aes } s8 |

    \tuplet 7/2 { f'8 aes des f s s s } s4
    \tuplet 8/2 { fes,8 aes bes des fes s s s } s8
    \tuplet 8/2 { ees,8 ges aes des ees s s s } s4
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
  
}