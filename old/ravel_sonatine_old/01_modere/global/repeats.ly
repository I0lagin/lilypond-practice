\version "2.24.4"

pianoIRepeatI = {

  %4
  <<
    { cis4~ 8 b16
      \tag #'layout ^\<
      cis } \\
    { r32 e,[ gis e r e gis e] r e[ gis e b' d, cis' d,] }
  >> |
  <<
    { gis16[ b\rest gis] r gis[ b\rest fis] r } \\
    { cis4~ cis8 b16 cis }
  >> |
  s2 |
  s4.\sustainTap s8\sustainTap |

  %5
  <<
    { d'8 e16 fis gis8)\! fis(
      \tag #'layout ^\mf
      } \\
    { r32 fis,[ a fis e' gis, fis' gis,] r a[ cis a r a cis a] }
  >> |
  <<
    { a'16[ r b] r cis[ b\rest cis] r } \\
    { d,8 e16 fis gis8 fis }
  >> |
  s2 |
  s8\sustainTap s8\sustainTap s8\sustainTap s8\sustainTap |

  \mBreak

  %6
  <<
    { cis'4~ cis16 cis d e } \\
    { r32 cis,[ gis' cis, r cis gis' cis,] r cis[ gis' cis, g' e g e] }
  >> |
  <<
    { \shape #'((1 . 0) (0 . 0) (0 . 0) (0 . 0)) Slur < ais e' >8[_( ais e' ais,)] } \\
    { fis2 }
  >> |
  s2 |
  s4.\sustainTap s8\sustainTap |

  %7
  <<
    { cis'8 b16 gis fis8 a) } \\
    { s32 cis,[ fis cis e b gis' b,] r fis[ cis' fis, r a e' a,] }
  >> |
  <<
    { d'8(-. d)-. < b, dis a' >8_( < d fis c' >) } \\
    { < e gis >4 s4 }
  >> |
  s2 |
  s8\sustainTap s8\sustainTap s8\sustainTap s8\sustainTap |

  %8
  <<
    { cis'4~( cis16 cis d e } \\
    { r32 cis,[ gis' cis, r cis gis' cis,] r cis[ gis' cis, g' e g e] }
  >> |
  <<
    { \shape #'((1 . 0) (0 . 0) (0 . 0) (0 . 0)) Slur < ais e' >8[_( ais e' ais,)] } \\
    { fis2 }
  >> |
  s2 |
  s4.\sustainTap s8\sustainTap  |

  \mBreak %0:20

  %9
  <<
    { cis'16 b cis gis) } \\
    { fis32 cis e b fis' cis gis' gis, }
  >> \oneVoice \diveight \stemUp r32 fis([ < cis' fis > fis,) r a( < e' a > a,)] |
  <<
    { d'8(-. d)-. } \\
    { < e, gis >4 }
  >> \oneVoice < b dis a' >8( < d fis c' >) |
  s4 s4\< |
  s8\sustainTap s8\sustainTap s8\sustainTap s8\sustainTap |
  
  %10
  r32 cis[( < fis cis' > cis < b e b' >16 gis')] r32 fis,[( < cis' fis > fis,) r a( < e' a > a,)] |
  <<
    { d'8(-. d)-. } \\
    { < e, gis >4 }
  >> \oneVoice < b dis a' >8( < d fis c' >) |
  s2 |
  s8\sustainTap s8\sustainTap s8\sustainTap s8\sustainTap |

  %11
  <<
    { cis'8\arpeggio->(
    \tag #'layout ^\f
     b16 gis) cis,8\arpeggio->( b16 gis) } \\
    { < cis fis >8\arpeggio[ < b e >] < cis, fis >\arpeggio[ < b e >] }
  >> |
  < e gis d' >4\arpeggio \clef bass < e, gis d' >\arpeggio |
  s2\! |
  s4\sustainTap s4\sustainTap |

  \mBreak %0:28

  %12
  r16 <<
    { 
      \override TextSpanner.bound-details.left.text = \markup { \upright \bold "Rall." }
      cis''16\arpeggio(^\> b gis)\! r16\startTextSpan cis,16\arpeggio(
      \tag #'layout ^\>
      b gis)\!\stopTextSpan
    } \\
    { < cis fis >16\arpeggio < b e >8 s16 < cis, fis >16\arpeggio < b e >8 }
  >> |
  \clef treble <<
    { < e' d' >4\arpeggio-> } \\
    { \shape #'((0.6 . -0.5) (0 . 0) (0 . 0) (0 . 0)) Slur a8\arpeggio^(
    \tag #'layout _\>
    gis)
    \tag #'layout \!
      }
  >> \clef bass <<
    { \shape #'((0.3 . 0.5) (0 . 0) (0 . 0) (0 . 0)) Slur a,8\arpeggio_(^\> gis)\! } \\
    { < e d' >4\arpeggio-> }
  >> |
  s2 |
  s4\sustainTap s8\sustainTap s8\sustainTap |

  %13
  <<
    { b'4..(^\markup { \italic "en dehors" } cis16 } \\
    { r8 fis,[^( eis gis)] }
  >> |
  r8 < d a' >([ < cis gis' > < e b' >)] |
  s8\p s4\> s8\! |
  s8\sustainOff s8\sustainOn s8\sustainTap s8\sustainTap |

  %14
  <<
    { b4.. cis16 } \\
    { r8 fis,[^( eis gis)] }
  >> |
  r8 < d a' >([ < cis gis' > < e b' >)] |
  s8 s4\> s8\! |
  s8\sustainOff s8\sustainOn s8\sustainTap s8\sustainTap | 

  %15
  <<
    { b4~ b16 cis e cis } \\
    { r8 fis,_([ eis e)] }
  >> |
  r8 < d a' >^(_\> < cis gis' >4)\! |
  s8 s4\> s8\! |
  s8\sustainOff s8\sustainOn s8\sustainTap s8\sustainTap |

  %16
  <<
    { a8 b16 cis a8 gis) } \\
    { r8 dis[_( d cis]) }
  >> |
  r8 < b fis' >4( e8) |
  s8 s4\> s8\! |
  s8\sustainOff s8\sustainOn s8\sustainTap s8\sustainTap |

  \pBreak %0:38

  %17
  <<
    { b'4~( b16 cis e cis } \\
    { r8 fis,_([ eis e)] }
  >> |
  r8 < d a' >^(_\> < cis gis' >4)\! |
  s8 s4\> s8\! |
  s8\sustainOff s8\sustainOn s8\sustainTap s8\sustainTap |

  %18
  <<
    { a8 b16 cis a8 gis } \\
    { r8 dis[_( d cis]) }
  >> |
  r8 < b fis' >4( e8) |
  s8 s4\> s8\! |
  s8\sustainOff s8\sustainOn s8\sustainTap s8\sustainTap |

  %19
  <<
    { fis4^
    \tag #'layout \> 
    e)
    \tag #'layout \!
     } \\
    { r8 < a, d >4 < gis cis >8 } \\
    { \override TextSpanner.bound-details.left.text = \markup { \upright \bold "Rit." } s8 s4.\startTextSpan }
  >> |
  r8 < b, b' >4_( < cis cis' >8) |
  s8 s4\> s8\! |
  s8\sustainOff s8\sustainOn s8\sustainTap s8\sustainTap |

  %20
  <<
    { a''8^\markup { \italic "très expressif"}^( gis16 e cis4) } \\
    { r8 a4_( gis8) } \\
    { s2 \stopTextSpan }
  >> |
  <<
    { fis''4-- e-- } \\
    { fis8_([ < fis, dis' >8 e' < fis, cis' >)] }
  >> |
  \once \override DynamicText.X-offset = #0.5 s2\ppp |
  s8\sustainOff\unaCorda s8\sustainOn s8\sustainTap s8\sustainTap |

  %21
  <<
    { a'8^( gis16 e cis4) } \\
    { r8 a4_( gis8) }
  >> |
  <<
    { fis'4-- e-- } \\
    { fis8_([ < fis, dis' >8 e' < fis, cis' >)] }
  >> |
  s2 |
  s8\sustainTap s8\sustainTap s8\sustainTap s8\sustainTap |

  \mBreak

  %22
  <<
    { a'8^( gis16 e cis8 e) } \\
    { r8 a,4_( gis8) }
  >> |
  <<
    { fis'4-- e-- } \\
    { fis8_([ < fis, dis' >8 e' < fis, cis' >)] }
  >> |
  s2 |
  s8\sustainTap s8\sustainTap s8\sustainTap s8\sustainTap |

  %23
  <<
    { \shape #'((0 . 3) (0 . 3) (0 . 3) (0 . 3)) Slur < fis, d' gis >4( < fis' cis' >8\fermata)^\markup { \raise #4 \italic "long" } } \\
    { s8 < d' e >[_\markup { \lower #3 \italic "m.g." } \toLower \stemUp < gis,, d' e >]\fermata } \\
    { \once \override TextSpanner.bound-details.left.text = \markup { \upright \bold "Rall." } s8\startTextSpan s8\stopTextSpan s8 }
  >> 
  \override Hairpin.to-barline = ##f < cis a' >8^(
  \tag #'layout  ^\>
  |
  <<
    { } \\ %for slur at m24 
    { \stemDown < e, b' >4_\fermata s8 \once \override Hairpin.to-barline = ##f < a e' >^(
    \tag #'layout _\>
    }
  >> |
  s4. s8\pp |
  s4.\sustainTap s8\sustainTap |

  %24
  < b d e >4.)
  \tag #'layout  \!
  < cis a' >8^(
  \tag #'layout ^\>
  |
  <<
    { r8 \clef treble \stemUp < d'' e >4-- s8 } \\
    { \stemDown < g,,, d' >4.)
      \tag #'layout \!
      \clef bass \stemDown \once \override Hairpin.to-barline = ##f < a e' >8^(
      \tag #'layout _\>
    }
  >> |
  s2 |
  s4.\sustainTap\treCorde s8\sustainTap |

  %25
  < b d e >4.)\! << 
    { \once \override Hairpin.to-barline = ##f < cis a' >8^(
      \tag #'layout ^\>
    } \\ % for slur at 26
    { }
  >> |
  <<
    { r8 \clef treble \stemUp < d'' e >4-- s8 } \\
    { 
      \stemDown < g,,, d' >4.)
      \tag #'layout \!
      \clef bass \stemDown \once \override Hairpin.to-barline = ##f < a e' >8^(
      \tag #'layout \>
    }
  >> |
  s2 |
  s4.\sustainTap s8\sustainTap |

}

pianoIRepeatII = {

  %26
  << 
    {
      \stemNeutral < b d e >8)_.
      \tag #'layout \!
      \shape #'((0 . 2) (0 . 2) (0 . 1) (0 . 0)) Slur 
      < a fis' >^>^( \clef bass cis4)~^(
    } \\
    { s4 \stemDown \once \shiftOff < e, gis >4~ }
  >> |
  <<
    { s4 r8 cis->~^( } \\
    { < g d' >8)^.
    \tag #'layout \!
    < fis cis' >^>^( < cis gis' >4) }
  >> |
  s8 s8\p s4 |
  s8\sustainTap s8\sustainTap s8\sustainOff s8\sustainOn |

  \mBreak 

  %27
  <<
    { cis'8 b16 cis d8 e16 fis } \\
    { q8 < d, fis > < fis a > < g b > }
  >> |
  <<
    { \stemDown cis'8 b16 cis d8 e16 fis } \\
    { s2 }
  >> |
  s2\< |
  s8 s8\sustainTap s8\sustainTap s8\sustainTap |

  %28
  <<
    { 
      gis'8 e gis16-.) r \clef treble
      \shape #'((0 . 0) (0 . 0) (-4.5 . 3) (-4 . 4)) Slur
      fis'8->( <>) } \\
    { < a,, cis >4 q16 r r32 a' cis a }
  >> |
  <<
    { \stemDown gis8 e gis16-.) r \clef treble \stemUp cis' } \\
    { 
      s4.
      \shape #'((0 . 0) (0 . 0) (-2 . 0) (-2.5 . 0)) Slur
      fis,8( <>)
    }
  >> |
  s4 s8 \once \override DynamicText.X-offset = -2 s8\ppSubito |
  s8\sustainTap s8\sustainTap s8\sustainTap s8\sustainTap |

}

globalMidiIRepeatI = {

  %4
  s4. s8\<  |

  %5
  s4. s8\mf

  %6-8
  s2*3

  %9
  s4 s4\<

  %10
  s2

  %11
  s2\f

  %12
  s4\> \tempo 4 = 54 s16 \tempo 4 = 48 s16 \tempo 4 = 42 s16 \tempo 4 = 36 s16 |

  %13
  \tempo 4=60 s2\p |

  %14-18
  s2*5 |

  %19
  \tempo 4 = 57 s8\> \tempo 4 = 51 s8 \tempo 4 = 45 s8 \tempo 4 = 33 s8 |

  %20
  \tempo 4 = 52 s2\ppp |

  %21
  s2 |

  %22
  s2  |

  %23
  \tempo 4=44 s8 \tempo 4 = 38 s8 \tempo 4 = 20 s8 \tempo 4 = 52 s8\pp |

  %24-25
  s2*2 |

}