\version "2.24.4"

toUpper = { \change Staff = "pianoUpper" }
toLower = { \change Staff = "pianoLower" }

textH = \finger \markup { \bold \fontsize #-3 "H" }
textA = \finger \markup { \bold \fontsize #-3 "A" }
textY = \finger \markup { \bold \fontsize #-3 "Y" }
textD = \finger \markup { \bold \fontsize #-3 "D" }
textN = \finger \markup { \bold \fontsize #-3 "N" }
textUDA = \finger \markup \rotate #180 { \bold \fontsize #-3 "A" }
textUDY = \finger \markup \rotate #180 { \bold \fontsize #-3 "Y" }
textUDD = \finger \markup \rotate #180 { \bold \fontsize #-3 "D" }
textUDN = \finger \markup \rotate #180 { \bold \fontsize #-3 "N" }

% pedal ref: https://www.youtube.com/watch?v=u6N6T8hUuQo

\parallelMusic pianoUpper,pianoLower,pianoDynamics,pianoPedal {
 
  %0 3/4, partial 4 0:08
  \voiceOne b'4->~(^\textH |
  \clef bass r4 |
  s4\p |
  \set Staff.pedalSustainStyle = #'bracket s4\sustainOn |

  %1 3/4
  << 
    { \voiceOne b4 a)^\textA d^\textY }
    \new Voice { \voiceTwo < c, e g >4 < d fis > r }
  >> |
  a4( b) r |
  s2. |
  s4 s4\sustainTap s4\sustainTap |

  %2
  <<
    { \voiceOne d'4->(^\textD g^\textN) < b, d >->(^~ }
    \new Voice { \voiceTwo < g b >2 r4 }
  >> |
  <<
    { \voiceOne fis'4(-> e)}
    \new Voice { \voiceTwo < e, b' >2 }
  >> \oneVoice r4 |
  s2. |
  s2.\sustainTap |

  %3
  <<
    { \voiceOne < b d >4 < > < a c >8 < g b > < e g > < fis a >) }
    \new Voice { \voiceTwo e2 s4 }
  >> |
  < c g' >2( < d c' >4|
  s2.\> |
  s2\sustainTap s4\sustainTap |

  %4
  << 
    { \voiceOne < fis a >4( < g b >) d'8 e }
    \new Voice { \voiceTwo b,2 s4 }
  >> |
  < g, d' >2) < b fis' >4~ |
  s2\! s4\f |
  s2\sustainTap s4\sustainTap |

  \mBreak
  % 0:15

  %5
  <<
    { \grace { d'32_( e } \voiceOne < d fis cis' >4)(-> < cis e b' >) d8( e) }
    \new Voice { \voiceTwo < d, fis cis' >4->-( < cis e b' >) s4 }
  >> |
  q2 q4~ |
  s2. |
  s2 s4\sustainTap |

  %6
  <<
    { \grace { d'32_( e } \voiceOne < d fis cis' >4)(-> < cis e b' >) d8( e) }
    \new Voice { \voiceTwo < d, fis cis' >4->-( < cis e b' >) s4 }
  >> |
  q2 q4 |
  s2. |
  s2 s4\sustainTap |

  %7
  <<
    { \grace { d'32_( e } \voiceOne < g, d' fis >4)( e'8 fis d cis) } 
    \new Voice { \voiceTwo s4 < e, g b >2_\markup{\italic "m.g."} }
  >> |
  < a e' b' >2. |
  s4 s2\>  |
  s2.\sustainTap |

  %8
  << 
    { cis'4( d) b->~( } \\
    { < d, fis a >2 < c e g >4~ }
  >> |
  a4( d,) r4 |
  s2 s4\p |
  s4\sustainOff s4\sustainOn s4\sustainTap |

  %9
  << 
    { \voiceOne b'4 a) d } \\
    { \voiceTwo q4 < d, fis >4 r }
  >> |
  a''4( b) r |
  s2. |
  s2. |

  %10
  <<
    { \voiceOne d'4->( g) < b, d >->(^~ }
    \new Voice { \voiceTwo < g b >2 r4 }
  >> |
  <<
    { \voiceOne fis'4(-> e)}
    \new Voice { \voiceTwo < e, b' >2 }
  >> \oneVoice r4 |
  s2. |
  s2.\sustainTap |

  \mBreak

  %11 0:28
  <<
    { \voiceOne < b d >4 < > < a c >8 < g b > < e g > < fis a >) }
    \new Voice { \voiceTwo e2 s4 }
  >> |
  < c g' >2( < d c' >4|
  s2.\> |
  s2\sustainTap s4\sustainTap |

  %12
  << 
    { \voiceOne < fis a >4( < g b >) d'8( e) }
    \new Voice { \voiceTwo b,2 s4 }
  >> |
  < g, d' >2) < b fis' >4~ |
  s2\! s4\mf |
  s2\sustainTap s4\sustainTap |


  %13
  <<
    { \grace { d'32_( e } \voiceOne < d fis cis' >4)(-> < cis e b' >) d8( e) }
    \new Voice { \voiceTwo < d, fis cis' >4->-( < cis e b' >) s4 }
  >> |
  q2 q4~ |
  s2. |
  s2 s4\sustainTap |

  %14
  <<
    { \grace { d'32_( e } \voiceOne < d fis cis' >4)(-> < cis e b' >) d8( e) }
    \new Voice { \voiceTwo < d, fis cis' >4->-( < cis e b' >) s4 }
  >> |
  q2 q4 |
  s2. |
  s2 s4\sustainTap |

  %15
  <<
    { \grace { d'32_( e } \voiceOne < g, d' fis >4)( e'8 fis d cis) } 
    \new Voice { \voiceTwo s4 < e, g b >2->_\markup{\italic "m.g."} }
  >> |
  < a e' b' >2. |
  s4 s2\>  |
  s2.\sustainTap |

  \mBreak %0:37

  %16
  << 
    { cis'4( d) c,8( d } \\
    { < d fis a >2 s4 }
  >> |
  <<
    { } \\ 
    { 
      \stemUp a4( d,)
      \shape #'((0 . 0) (26 . 3) (-7 . -15) (-0 . -8)) Slur
      \stemDown b''4^~_\textH^(
    } %for slur to 18
  >> |
  s2 s4\p |
  s4\sustainOff s4\sustainOn s4\sustainOff |

  %17
  <<
    { \grace { c32 d } e2) fis8( g } \\
    { c,2. }
  >> |
  <<
    { } \\
    { \stemDown b4 a_\textA d,_\textY }
  >> |
  s4 s2\< |
  s2 s4\sustainOn |

  %18
  <<
    { \grace { fis32 g } < fis a >2) < g b >8( < a cis > } \\
    { b,2. }
  >> |
  <<
    { } \\
    { \once \override NoteColumn.force-hshift = #1 d4_\textD g,2)~)_\textN } \\
    { \once \override NoteColumn.force-hshift = #-1 d'2.~ }
  >> |
  s2. |
  s4\sustainOff s2\sustainOn |

  %19
  <<
    { \grace { b'32 cis } d4. e8 cis b } \\
    { < fis b >2 < e a >4 } 
  >> |
  <<
    { g'4^\textN d^\textD d^\textY } \\
    { < g,, d' >2._~ } \\
    { \once \hideNotes \once \stemDown d'2. }
  >> |
  s2.\mf |
  s2. |

  %20
  <<
    { d'4. e8 cis b } \\
    { < fis b >2 < e a >4 }
  >> |
  <<
    { a'4^\textA b2^\textH~ } \\
    { q2. }
  >> |
  s2. |
  s2. |

  \mBreak

  %21 0:47
  <<
    { d'4. e8 cis b } \\
    { < fis~ b >2 fis4 }
  >> |
  <<
    { b4 cis d } \\
    { g,2.~ }
  >> |
  s2. |
  s2\sustainTap s4\sustainTap |

  %22
  <<
    { a8 b fis2) } \\
    { cis4 < b d > < a cis > }
  >> |
  <<
    { e'4 s2 } \\
    { g,2 fis4^~ }
  >> |
  s8 s8\> s2 |
  s4\sustainTap s4\sustainTap s4\sustainTap |

  %23
  <<
    { a'8( b fis2) } \\
    { < cis e >4 < b dis > < a cis > }
  >> |
  <<
    { } \\
    { fis4 b,2 }
  >> |
  s2. |
  s4\sustainTap s4\sustainTap s4\sustainTap |

  %24
  <<
    { a'8( b fis4) g8( a } \\
    { < cis, e >2 dis4 }
  >> |
  <<
    {
      r4 b
      \shape #'((0 . 3) (-2 . -1) (-1 . -3) (0 . 0)) Slur
      b'_(
    } \\
    { e,,2. }
  >> |
  s2\pp s4\< |
  s4\sustainOff s2\sustainOn |

  %25
  <<
    { \grace { g32 a } < g b >2) cis8( d } \\
    { }
  >> |
  <<
    { \clef treble \grace { s16 } d''4)^\textUDN g^\textUDD g^\textUDY } \\
    { < b, d >2. } 
  >> |
  s2. |
  s2.\sustainTap |

  %26
  <<
    { e2) fis8( g } \\
    { \appoggiatura { \stemUp cis,32 d } \stemDown d2. }
  >> |
  <<
    { cis'4^\textUDA b2^\textH } \\
    { < d, g >2. }
  >> |
  s2. |
  s2.\sustainTap |

  \pBreak

  %27 0:58
  << 
    { \grace { fis32 g } gis4. ais8 eis dis } \\
    { s2 s8 \once \hideNotes dis~ }
  >> |
  <<
    { 
      \shape #'((1 . 2.5) (10 . 3) (0 . 24) (0 . 4)) Slur
      \toUpper \stemDown gis'4_( \toLower \stemUp dis dis
    } \\
    { < cis,~ eis~ b' >2. }
  >> |
  s2.\f |
  s2.\sustainTap |

  %28
  <<
    { gis4. ais8 eis dis) } \\
    { dis2. }
  >> |
  << 
    { ais'4 b2) } \\
    { < cis, eis >2. }
  >> |
  s2. |
  s2.\sustainTap |

  %29
  <<
    { < b d g >4.\( a'8 fis e } \\ % for slur at m37
    { }
  >> |
  \clef bass
  <<
    {
      \shape #'((1 . 6.5) (2 . 0) (-1 . 9) (0 . 4)) Slur
      \toUpper \stemDown g'4_(
      \toLower \stemUp d d
    } \\
    { cis,2.~ }
  >> |
  s2.\mf\> |
  s2.\sustainTap |

  %30
  <<
    { < g, b d g >4. a'8 fis e }\\
    { }
  >> |
  <<
    { a'4 b2) } \\
    { cis,2. }
  >> |
  s2. |
  s4 s2\sustainTap |

  %31
  << 
    { cis4. < ais dis >8 eis dis }
    { } \\
  >> |
  <<
    { 
      \shape #'(((1 . 8.5) (2 . 3) (-1 . 7) (0 . 3))
                 ((0 . 5) (0 . 4) (-2 . 7) (-0.5 . 2.5))
                ) Slur
      \toUpper \stemDown g''4_(
      \toLower \stemUp dis dis
    } \\
    { < cis,~ b' >2. }
  >> |
  s2.\p\> |
  s4 s2\sustainTap |

  \mBreak

  %32 1:11
  << 
    { < gis cis >4. < ais dis >8 eis dis } \\
    { }
  >> |
  <<
    { ais'4 b2) } \\
    { cis,2. }
  >> |
  s2. |
  s4 s2\sustainTap |

  %33
  << 
    { g4. a8 fis e_( } \\
    { < ais, e' >2. }
  >> |
  <<
    { c'4 g g } \\
    { fis,2.~ }
  >> |
  s2.\pp |
  s2.\sustainTap |

  %34
  <<
    { g'4.) a8 fis e_( } \\
    { < ais, e' >2. }
  >> |
  <<
    { d'4 e2~ } \\
    { fis,2. }
  >> |
  s2. |
  s2.\sustainTap |

  %35
  <<
    { g'4.) a8 fis e_( } \\
    { < ais, e' >2. }
  >> |
  <<
    { e'4 g ais } \\
    { fis,2.~ }
  >> |
  s2. |
  s2.\sustainTap |

  %36
  <<
    { g'8[) a fis e] \clef bass dis[ e } \\
    { e4 c ais }
  >> |
  <<
    { c''4 ais g  } \\
    { fis,2.~ }
  >> |
  s4 s2\> |
  s2. |

  %37
  <<
    { d8 c] g a \once \override NoteColumn.force-hshift = #-0.5 d, c\) } \\
    { g'4 e \once \override NoteColumn.force-hshift = #0.6 e }
  >> |
  <<
    { e'4 ais, fis } \\
    { fis2. }
  >> |
  s2. |
  s4\sustainTap s4\sustainTap s4\sustainTap |

  \mBreak %1:22

  %38
  \oneVoice \clef treble r4 r4 < d'' fis a d >4~->( |
  r4 r4 <<
    { 
      \shape #'((0 . 0) (5 . 5) (0 . -12) (0 . -5)) Slur
      ais'4^(
    } \\
    { < dis, a'! >4~-> }
  >> |
  s2\! s4\pp |
  s2\sustainOn\unaCorda s4\treCorde |

  %39
  q4 < c e g c >) < g b e g >~ |
  <<
    { b'4 c cis } \\
    { q4 < e, a > < eis b' >~ }
  >> |
  s2. |
  s2. |

  %40
  q4 < fis a dis fis > < c' e gis c >->(~ |
  <<
    { d'4 dis dis! } \\
    { q4 < fis, c' > < gis d' >_~ }
  >> |
  s2. |
  s4. s4.\sustainTap |

  %41
  q4 < b dis eis b' >) < e, b' e >^>~^( |
  << 
    { e' eis s4 } \\
    { q4 < a, dis > \clef treble \stemUp < b eis g >~ }
  >> |
  s2. |
  s2. |

 
  %42-43. slur from m38 doesn't work unless i do it like this for some reason
  q4 < d d' >) \stemUp < fis' b >^>^~^(^\textH q4 < g a >)^\textA 
  <<
    { d^\textY } \\
    { < fis, cis' > }
  >> |
  << 
    { \toUpper \stemDown s4 a' b bis4 cis) } \\
    { \stemUp < b, eis gis > < c fis > < dis~ a'^~ > q4 < e a > }
  >> \oneVoice r4 |
  s2. s2. |
  s4.\sustainTap s4.\sustainTap s2 s4\sustainTap |

  \mBreak %1:34

  %44
  << 
    { d'4->(^\textD g)^\textN < b, d >->^~( } \\
    { < a b >4( < g b >) fis }
  >> |
  \clef bass b,,2.( |
  s2. |
  s2.\sustainTap |

  %45
  <<
    { < b d >4 < a c >8 < g b > < e g > < fis a > } \\
    { e2 c4 }
  >> |
  a2 d4 |
  s2. |
  s2\sustainTap s4\sustainTap |

  %46
  <<
    { < fis a >4 < g b >) f'8 g } \\
    { b,,2 s4 }
  >> |
  g,4) r < g' d' >~ |
  s2. |
  s4\sustainTap s4\sustainTap s4\sustainTap |

  %47
  <<
    { \grace { f''32 g } < e a e' >4->( < d g d' >) f8 g } \\
    { < b,, f' a >4->( < d g b >) r }
  >> |
  q2 q4~ |
  s2. |
  s2 s4\sustainTap |

  %48
  <<
    { \grace { f'32 g } < e a e' >4->( < d g d' >) c'\( } \\
    { < b,, f' a >4->( < d g b >) c'8 d }
  >> |
  q2 < c g' e' >4 |
  s2. |
  s2 s4\sustainTap |

  \mBreak %1:44

  %49
  <<
    { \grace { c32_( d } e2)\) s4 } \\
    { < gis, c >4 < fis b >8 c' < c, e > g' }
  >> |
  < e d' >2_( < a, g' >4) |
  s2. |
  s2\sustainTap s4\sustainTap |

  %50
  <<
    { e'2 s4 } \\
    { < gis, c >4 < fis b >8 c' < c, e > g' } 
  >> |
  < e' d' >2_( < a, g' >4) |
  s2. |
  s2\sustainTap s4\sustainTap |

  %51
  <<
    { c4( bes8 c ees,4) } \\
    { < des f >2 c4 }
  >> |
  <<
    { r4 g'2-- } \\
    { ees,2( aes4) }
  >> |
  s2.\p |
  s2\sustainTap s4\sustainTap |

  %52-54
  <<
    {
      \override TextSpanner.bound-details.left.text = \markup { \upright \bold "rall." }
      < c e >2 < d fis >4\startTextSpan( fis2 g4~ < g >2\stopTextSpan)
    } \\
    {
      \shape #'((1.5 . 2) (4 . -2) (0 . 16) (1 . 4.5)) Slur 
      b,4_(_\textH a_\textA \toLower \stemUp d,^\textY \stemDown d^\textD g,2)^\textN s2
    } \\
    { s2. \shiftOff \stemDown < b' d >2._~ \stemUp q2_\fermata }
  >> \oneVoice r4 |
  d,2. s2. g,2_\fermata r4 |
  s2.*3 |
  s4\sustainOff s4\sustainOn s4\sustainTap s2.\sustainOff s2. |

}

pianoLowerTwo = {
  
  %0 3/4, partial 4
  r4 |

  %1-37
  R2.*37

  %38
  % \once \override StaffGroup.SpanBar.glyph-name = #"!"
  \clef bass
  << 
    { \voiceOne \stemDown b,,2._~ }
    \new Voice { \voiceThree \override Rest.Y-offset = #0 r4 \stemUp b'2 }
  >> |

  %39
  \oneVoice b,2.~

  %40
  b4. b4.~

  %41
  b2.~
  
  %42
  b4. b4.~

  %43
  b2.

  %44-54
  % \override StaffGroup.SpanBar.stencil = #"|"
  s2.*11
  

}

pianoDynamicsTwo = {
  
  %0 3/4, partial 4
  r4 |

  %1-37
  R2.*37

  %38
  s4^\pp s2^\< |

  %39
  s2.

  %40
  s2.

  %41
  s2.
  
  %42
  s4. s4.\!^\>

  %43
  s2 s8. s16\!

  %44-54
  s2.*11

}