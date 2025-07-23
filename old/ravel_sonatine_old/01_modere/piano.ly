\version "2.24.4"

ppSubito = #(make-dynamic-script
  (markup  #:dynamic "pp"
  #:normal-text #:italic "subito"))

ffPassione = #(make-dynamic-script
  (markup  #:dynamic "ff"
  #:normal-text #:italic "passioné"))

mfTres = #(make-dynamic-script
  (markup  #:dynamic "mf"
  #:normal-text #:italic "très expressif"))

mpTres = #(make-dynamic-script
  (markup  #:dynamic "mp"
  #:normal-text #:italic "très expressif"))

\include "repeats.ly"

% pedal reference: Judith Valerie Engel @ https://youtu.be/uFLsJrQ-III 0:00~

\parallelMusic pianoUpperI,pianoLowerI,pianoDynamicsI,pianoPedalI {

  %1
  r8 <<
    { fis''8(^\markup { \italic "doux et expressif" } cis4~ } \\
    { \diveight r32 a cis a r e[ gis e r e gis e] }
  >> |
  r8 <<
    { cis''16 r gis[ b\rest gis] r } \\
    { fis8( cis4~ }
  >> |
  s8 s4.\p |
  \set Staff.pedalSustainStyle = #'bracket s8 s8\sustainOn s4\sustainTap |

  %2
  <<
    { cis'8 b16
      \tag #'(layout unfold) ^\< 
      cis d8 e16 fis } \\
    { r32 e, gis e b' d, cis' d, r fis a fis e' gis, fis' gis, }
  >> |
  <<
    { gis'16[ b\rest fis] b\rest a[ r b] d\rest } \\
    { cis,8 b16 cis d8 e16 fis  }
  >> |
  s2 |
  s8 s8\sustainTap s8\sustainTap s8\sustainTap |

  \mBreak %0:08

  %3
  <<
    { 
      gis'8[ e gis16])\! r fis8->(
      \tag #'(layout unfold) ^\ppSubito
    } \\
    { r32 a,[ cis a r a cis a] r( \tuplet 3/2 { a16 cis32) } r r a cis a }
  >> |
  <<
    { cis'16[ d\rest cis d\rest cis] r cis r } \\
    { gis8[ e gis16]) r fis8-> }
  >> |
  s2 |
  s8\sustainTap s8\sustainTap s8\sustainTap s8\sustainTap |

  %see repeats.ly
  \pianoIRepeatI
  \pianoIRepeatII
  \tag #'(midi unfold) \pianoIRepeatI
  
  %29 2:08
  << 
    {
      \shape #'((0 . 0.75) (-0.75 . 0.5) (-4.5 . 0.5) (-6 . 1)) Slur
      \stemNeutral < b d e >8\!_.( <> )
      < ais_\=1( fis'^\=2( >^> < ais\=1) cis\=2) >4
    } \\
    { }
  >> |
  <<
    { s4. \clef treble < e''_~ e'^~ >8_-[ } \\
    { 
      \once \override Staff.Clef.transparent = ##t \clef bass
      \shape #'((0 . 0) (-1.5 . 0) (-5 . 1) (-6 . 2)) Slur
      < g,, d' >8^.^( <>)
      < g_\=1( cis^\=2( >_> < fis\=1) cis'\=2) >4
    }
  >> |
  s2 |
  s8\sustainTap s8\sustainTap s4\sustainTap |

  %30
  r8 < ais_\=1( fis'^\=2( >^> < ais\=1) cis\=2) >4 |
  <<
    { < e'' e' >8] s4 \clef treble < e_~ e'^~ >8_-[ } \\
    { s8 \clef bass < g,,_\=1( cis^\=2( >_> < fis\=1) cis'\=2) >4 } 
  >> |
  s2 |
  s8 s8\sustainTap s4\sustainTap |

  %31
  r8 < ais' cis >4-- q8--[~ |
  <<
    { < e'' e' >8] } \\
    { }
  >> q4( < d d' >16 < e e' > |
  s8 s4.\p |
  s8 s4\sustainTap s8\sustainTap |

  \mBreak %2:17

  %32
  q8] q4-- q8--~[ |
  < fis fis' >8 < d d' >16 cis < e e' >8) q~[_( |
  s2 |
  s8\sustainTap s8\sustainTap s8\sustainTap s8\sustainTap |

  %33
  q8] q4-- q8--~[ |
  q8] q4 < d d' >16 < e e' > |
  s2 |
  s8 s4\sustainTap \sustainTap s8\sustainTap |

  %34
  q8] q8-- <<
    { cis'8->( b } \\
    { \diveight fis32 d \repeat unfold 3 { fis32 d } }
  >> |
  < fis fis' >8 < d d' >16 cis) \acciaccatura { cis32 d fis } \once \override Slur.positions = #'(0 . 2) cis'8->( b |
  s4 \once \override DynamicText.self-alignment-X = -1 s4\mfTres |
  s8\sustainTap s8\sustainTap s8\sustainTap s8\sustainTap |

  %35
  <<
    { fis4~ fis8 e16 fis } \\
    { \repeat unfold 4 {cis32 a } \repeat unfold 4 { b32 g } } \\
    { s8 s4.^\< }
  >> |
  <<
    { fis4~ fis8 e16 fis } \\
    { r8 b,_~_( < e, b' >4) }
  >> |
  s2 |
  s8\sustainTap s8\sustainTap s4\sustainTap |

  \mBreak %2:24

  %36
  <<
    { g'8 a16 b cis8) b->( } \\
    { \repeat unfold 2 { d,32 b } \repeat unfold 2 { e32 cis } \repeat unfold 4 { fis32 d } } \\
    { s4 s4\! }
  >> |
  g'8 a16 b cis8) b |
  s2 |
  s8\sustainTap s8\sustainTap s8\sustainTap s8\sustainTap |

  %37
  \ottava 1
  <<
    { fis'4~ fis16 fis g a } \\
    { fis32 a, c a c a c a
      c a fis' a, g' a, a' a, }
  >> |
  dis8^([ dis' dis, b)] |
  s2\f |
  s4.\sustainTap s8\sustainTap |

  %38
  <<
    { fis'8 e16 d b8 d) } \\
    { fis32 g, b g e' g, d' g, b g b g d' g, d' g, }
  >> |
  d8([ b' d, b)] |
  s2 |
  s8\sustainTap s8\sustainTap s8\sustainTap s8\sustainTap |

  \pBreak

  %39
  <<
    { fis'4~( fis16 fis g a } \\
    { fis32 a, c a c a c a
      c a fis' a, g' a, a' a, }
  >> |
  dis8^([ dis' dis, b)] |
  s2 |
  s4.\sustainTap s8\sustainTap |

  %40
  <<
    { fis'16 e fis d b8 d) } \\
    { fis32 g, e' g, fis' g, d' g, b g b g d' g, d' g, }
  >> |
  d8([ b' d, bes)] |
  s2 |
  s8\sustainTap s8\sustainTap s4\sustainTap |

  %41
  <<
    { fis'8^(^\> e16 cis)\! b8^(^\> a16 fis)\! } \\
    { b8_( a) < d, g >_( cis) } \\
    { s4 \ottava 0 s4 }
  >> |
  <<
    { d8_(^\> cis)\! } \\
    { < a g' >4_> }
  >> \stemDown e4 |
  s2 |
  s4\sustainTap s4\sustainTap |

  %42
  <<
    { fis8^(^\> e16 cis)\! b8^(^\> a16 fis)\! } \\
    { b8_( a) < d, g >_( cis) } \\
    { 
      \override TextSpanner.bound-details.left.text = \markup { \upright \bold "Poco rit." }
      s4..\startTextSpan s16\stopTextSpan
    }
  >> |
  \clef bass <<
    { d8_(^\> cis)\! } \\
    { < a g' >4 }
  >> \stemDown e4 |
  s2 |
  s4\sustainTap s8\sustainTap s8\sustainTap |

  \mBreak %2:38

  %43
  \shape #'((-0.4 . 2.8) (0 . 0) (0 . 0) (0 . 0)) Slur
  < g b e >4..^( fis'16 |
  \stemNeutral r8 < a, d >[_( < e a >) a'] |
  s2\pp |
  s8\sustainOff s4.\sustainOn |

  %44
  \divfour < g, b e^~ >4 e'16 fis a fis |
  \stemNeutral r8 < a, d >[_( < e a >) a'] |
  s2 |
  s8\sustainTap s8\sustainTap s4\sustainTap |

  %45
  < g, b d >8 e'16 fis < g, b d >8 cis) |
  \stemNeutral r8 < a, d >[_( < e a >) a'] |
  s2 |
  s8\sustainTap s8\sustainTap s8\sustainTap s8\sustainTap |

  %46-47 for slur
  <<
    { < c e a^~ >4 a'16 b d b < g, c e g >8 a16 b < g c e g >8 b'\rest } \\
    {
      \shape #'((0.6 . -0.1) (20 . 2.6) (9 . 12) (0.5 . 5.5)) Slur
      \once \hideNotes f'8\rest^( s4. s4. \toLower \once \hideNotes f,,8\rest)
    } \\
    { 
      \override TextSpanner.bound-details.left.text = 
      \markup { "crescendo" }
      \override TextSpanner.bound-details.right.text = \markup { "e" }
      s8 s4.\startTextSpan s4.. s16\stopTextSpan
    }
  >> |
  \stemUp r8 < a, d >_([ < e a >) < fis' fis' >] r8 < a, d >_([ < e a >) < fis' fis' >] |
  s2 s2 |
  s8\sustainTap s8\sustainTap s4\sustainTap s8\sustainTap s8\sustainTap s4\sustainTap |

  %48
  \override TextSpanner.bound-details.left.text = \markup { "accelerando" }
  \override TextSpanner.bound-details.left-broken.text = \markup { \fontsize #-1 (accelerando) }

  < f' a d >8._(\startTextSpan e'16) < f, a d >8._( e'16) |
  <<
    { < a b >4. q8 } \\
    { r8 < a, d >^([ < e a >)] r }
  >> |
  s2\mf |
  s4.\sustainTap s8\sustainTap |

  \mBreak %2:52

  %49
  \stemDown < bes d g >8.^( a'16) < bes, d g >8.^( a'16)|
  <<
    { < d'' e >4. q8 } \\
    { r8 < a, d >^([ < e a >)] r }
  >> |
  s2 |
  s4.\sustainTap s8\sustainTap |

  %50
  < f, a d >8.^( e'16) \repeat unfold 2 { < f, a d >16 e' }|
  <<
    { < a' b >4. q8 } \\
    { r8 < a, d >^([ < e a >)] r } \\
  >> |
  s2 |
  s4.\sustainTap s8\sustainTap |

  %51
  < bes d g >8.^( a'16) q a q a\stopTextSpan |
  <<
    { < d'' e >4. q8 } \\
    { r8 < a, d >^([ < e a >)] r }
  >> |
  s2 |
  s4.\sustainTap s8\sustainTap |

  %52
  < c, f c' >4->~ q16 d' q a |
  \stemDown r8 < e'' f >->[ < e,, e' > < e'' f >] |
  s2\f\< |
  s2\sustainTap |

  %53
  < c, fis c' >4->~ q16 d' q a |
  \stemDown r8 < e fis >->[ < e,, e' > < e'' fis >] |
  s2 |
  s2\sustainTap |

  \mBreak %2:57

  %54
  < c, g' c >4->~ q16 d' q a |
  r8 < e g >->[ < e,, e' > < e'' g >] |
  s2 |
  s2\sustainTap |

  %55
  <<
    { c8.^([ d16 b8. a16]) } \\
    { r8 gis[_( d gis]) }
  >> |
  \clef treble \stemUp r8 < gis c >[_( < e fis > < gis c >]) |
  \once \override DynamicText.self-alignment-X = -1 s2\ffPassione |
  s4\sustainTap s4\sustainTap |

  %56
  <<
    { c8.^([ d16 b8. a16]) } \\
    { r8 gis[_( d gis]) }
  >> |
  r8 < gis c >[_( < e fis > < gis c >]) |
  \override TextSpanner.bound-details.left.text = \markup { "dim." }
  \override TextSpanner.bound-details.right.text = \markup { "e" }
  s4..\startTextSpan s16\stopTextSpan |
  s4\sustainTap s4\sustainTap |

  %57
  <<
    { c2( } \\
    { r8 gis[_( fis gis]) }
  >> |
  r8 < gis c >[_( < d fis > < gis c >]) |
  \override TextSpanner.bound-details.left.text = \markup { "rall." }
  \override TextSpanner.bound-details.right.text = \markup { }
  s8 s4.\startTextSpan |
  s8\sustainOff s4.\sustainOn |

  %58
  <<
    { < b, b' >4 < a a' >) } \\
    { r8 gis'[_( fis gis]) }
  >> |
  r8 < gis c >[_( < d fis > < gis c >]) |
  s4.. s16\stopTextSpan |
  s4\sustainTap s4\sustainTap |

  \mBreak

  %59
  <<
    { gis8->( fis cis4)(~ } \\
    { \diveight r32 a[ cis a cis a cis a] r e[ gis e r e gis e] }
  >> |
  <<
    { s4 gis16[ b\rest gis] b\rest } \\
    {
      \shape #'((1 . 0) (25 . 1) (-100 . -16) (-0.4 . -5.5)) Slur
      < cis, gis' >8^>^( fis cis4~
    }
  >> |
  \once \override DynamicText.self-alignment-X = -1 s2\mpTres |
  s8\sustainTap s8\sustainTap s4\sustainTap |

  %60
  <<
    { cis'8 b16
    \tag #'(layout unfold) ^\<
     cis d8 e16 fis } \\
    { r32 e,[ gis e b' d, cis' d,] r fis[ a fis e' gis, fis' gis,] }
  >> |
  <<
    { gis'16[ b\rest fis] b\rest a[ d\rest b] d\rest } \\
    { cis,8 b16 cis d8 e16 fis }
  >> |
  s2 |
  s8 s8\sustainTap s8\sustainTap s8\sustainTap |

  %61
  <<
    { gis'8[ e gis16])
      \tag #'(layout unfold) \!
      r
      fis8(->
      \tag #'(layout unfold) ^\ppSubito  
    } \\
    { r32 a,[ cis a r a cis a] r( \tuplet 3/2 { a16 cis32) } r r a cis a }
  >> |
  <<
    { cis'16[ d\rest cis d\rest cis] d\rest cis r } \\
    { gis8[ e gis16]) r fis8->_( }
  >> |
  s2 |
  s8\sustainTap s8\sustainTap s8\sustainTap s8\sustainTap |

  \pBreak

  %62
  <<
    { cis4~ 8 b16
      \tag #'(layout unfold) ^\<
      cis } \\
    { r32 e,[ gis e r e gis e] r e[ gis e b' d, cis' d,] }
  >> |
  <<
    { gis16[ b\rest gis] r gis[ b\rest fis] r } \\
    { cis4~ cis8 b16 cis }
  >> |
  s2 |
  s4.\sustainTap s8\sustainTap |

  %63
  <<
    { d'8 e16 fis gis8)
      \tag #'(layout unfold) \!
      fis(
      \tag #'(layout unfold) ^\mf
      } \\
    { r32 fis,[ a fis e' gis, fis' gis,] r a[ cis a r a cis a] }
  >> |
  <<
    { a'16[ r b] r cis[ b\rest cis] r } \\
    { d,8 e16 fis gis8) fis }
  >> |
  s2 |
  s8\sustainTap s8\sustainTap s8\sustainTap s8\sustainTap |


  %64
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

  \mBreak

  %65
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

  %66
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

  %67
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
  
  \mBreak %3:24

  %68
  \stemDown r32 cis[( < fis cis' > cis < b e b' >16 gis')] \stemUp r32 fis,[( < cis' fis > fis,) r a( < e' a > a,)] |
  <<
    { d'8(-. d)-. } \\
    { < e, gis >4 }
  >> \oneVoice < b dis a' >8( < d fis c' >) |
  s2 |
  s8\sustainTap s8\sustainTap s8\sustainTap s8\sustainTap |

  %69
  \stemDown < cis fis cis' >8^>\arpeggio^( < b e b' >16\arpeggio gis') < gis, cis gis' >8^>\arpeggio^( < fis b fis' >16\arpeggio dis') |
  < e gis d' >4\arpeggio < b dis a' >\arpeggio |
  s4\f s4\> |
  s4\sustainTap s4\sustainTap |

  %70
  <<
    { < dis, ais' dis >8\arpeggio^>^( < bis gis' bis >16\arpeggio a') \once \override Clef.X-offset = #5 a8\arpeggio^>^( gis16 eis) } \\
    { s4 < b dis >\arpeggio } \\
    {
      \override TextSpanner.bound-details.left.text = \markup { \upright \bold "Rall." }
      s4..\startTextSpan s16\stopTextSpan
    }
  >> |
  < gis bis fis' >4\arpeggio \clef bass < cis, eis >\arpeggio |
  s2 |
  s4\sustainTap s4\sustainTap |

  \mBreak %3:31

  %71 to fis maj
  <<
    { gis'4..(^\markup { \italic "en dehors" } ais16 } \\
    { r8 dis,[^( cisis eis]) }
  >> |
  r8 < b fis' >[^( < ais eis' > < cis gis' >)] |
  s8\p s4\> s8\! |
  s8\sustainOff s8\sustainOn s8\sustainTap s8\sustainTap |

  %72
  <<
    { gis4.. ais16 } \\
    { r8 dis,[^( cisis eis]) }
  >> |
  r8 < b fis' >[^( < ais eis' > < cis gis' >)] |
  s8 s4\> s8\! |
  s8\sustainOff s8\sustainOn s8\sustainTap s8\sustainTap |

  %73
  <<
    { gis4~ gis16 ais cis ais } \\
    { r8 dis,_([ cisis cis]) }
  >> |
  r8 \stemDown < b fis' >^( 
  \tag #'(layout unfold) \>
  < ais eis' >4)
  \tag #'(layout unfold) \!
  |
  s8 s4\> s8\! |
  s8\sustainOff s8\sustainOn s8\sustainTap s8\sustainTap |

  %74
  <<
    { fis8 gis16 ais fis8 eis) } \\
    { r8 bis[_( b ais]) }
  >> |
  r8 < gis dis' >4^( cis8) |
  s8 s4\> s8\! |
  s8\sustainOff s8\sustainOn s8\sustainTap s8\sustainTap |

  %75
  << 
    { gis'4~( gis16 ais cis ais } \\
    { r8 dis,[_( cisis cis]) }
  >> |
  r8 \stemDown < b fis' >^( 
  \tag #'(layout unfold) \>
  < ais eis' >4)
  \tag #'(layout unfold) \! |
  s8 s4\> s8\! |
  s8\sustainOff s8\sustainOn s8\sustainTap s8\sustainTap |

  \mBreak %3:42

  %76
  <<
    { fis8 gis16 ais fis8 eis } \\
    { r8 bis[_( b ais]) }
  >> |
  r8 < gis dis' >4^( cis8) |
  s8 s4\> s8\! |
  s8\sustainOff s8\sustainOn s8\sustainTap s8\sustainTap |

  %77
  \clef bass <<
    { dis4 cis) } \\
    { r8 < fis, b >4 < eis ais >8 } \\
    { 
      \override TextSpanner.bound-details.left.text = \markup { \upright \bold "Rit." }
      s8 s8\startTextSpan s8. s32\stopTextSpan
    }
  >> |
  \stemNeutral r8 < gis, gis' >4_( < ais ais' >8) |
  s8 s4\> s8\! |
  s8\sustainOff s8\sustainOn s8\sustainTap s8\sustainTap |

  %78
  \clef treble <<
    { fis''8^(^\markup{ \italic "très expressif"} eis16 cis ais4) } \\
    { r8 fis4_( eis8) }
  >> |
  <<
    { dis''4-- cis-- } \\
    { dis8_([ < dis, bis' > cis' < dis, ais' >]) }
  >> |
  \once \override DynamicText.Y-offset = #4
  \once \override DynamicText.X-offset = #0
  s2\ppp |
  s8\sustainOff\unaCorda s8\sustainOn s8\sustainTap s8\sustainTap |

  %79
  <<
    { fis'8^( eis16 cis ais4) } \\
    { r8 fis4_( eis8) }
  >> |
  <<
    { dis'4-- cis-- } \\
    { dis8_([ < dis, bis' > cis' < dis, ais' >]) }
  >> |
  s2 |
  s8\sustainTap s8\sustainTap s8\sustainTap s8\sustainTap |

  %80
  <<
    { fis'8^( eis16 cis ais8 cis) } \\
    { r8 fis,4_( eis8) }
  >> |
  <<
    { dis'4-- cis-- } \\
    { dis8_([ < dis, bis' > cis' < dis, ais' >]) }
  >> |
  s2 |
  s8\sustainTap s8\sustainTap s8\sustainTap s8\sustainTap |

  %81
  \override TextSpanner.bound-details.left.text = \markup { \upright \bold "Rall." }
  \clef bass
  \after 8. \stopTextSpan < dis, bis' eis >4^(\startTextSpan
  < dis' ais' >8)\fermata^\markup \raise #5.75 { \italic "long" } 
  \override Hairpin.to-barline = ##f
  \clef treble \stemUp < ais fis' >8\noBeam^(
  \tag #'(layout unfold)  ^\> 
  |
  <<
    { s8 \clef treble < b'' cis >8[ \clef bass < eis,, b' cis >8]\fermata s8 } \\
    { < cis, gis' >4.\fermata < fis cis' >8_(
      \tag #'(layout unfold) _\>
    }
  >> |
  s4. 
  \once \override DynamicText.Y-offset = #2
  s8\pp |
  s4.\sustainTap s8\sustainTap\treCorde |

  \mBreak %4:03

  %82
  \tag #'(layout unfold) <> \after 16 \!
  < gis b cis >4.)
  < ais fis' >8^(
  \tag #'(layout unfold) ^\>
  |
  <<
    { r8 \clef treble < b'' cis >4-- s8 } \\
    {
    \tag #'(layout unfold) <> \after 16 \!  
    < e,,, b' >4.)
    \clef bass < fis cis' >8_(
    \tag #'(layout unfold) _\>}
  >> |
  s2 |
  s4.\sustainTap s8\sustainTap |

  %83
  < gis b cis >4.)
  \tag #'(layout unfold) \!
  <<
    { < ais fis' >8^( } \\
    { }
  >> |
  <<
    { r8 \clef treble < b'' cis >4-- s8 } \\
    {
    \tag #'(layout unfold) <> \after 16 \!
    < e,,, b' >4.)
    \clef bass < fis cis' >8_( }
  >> |
  s2 |
  s4.\sustainTap s8\sustainTap |

  %84
  <<
    { 
      \override TextSpanner.bound-details.left.text = \markup { \upright \bold "Rallentando" }
      cis8\startTextSpan b16 cis d8 e16 fis
    } \\
    { < gis, b >4 < fis bis > }
  >> |
  <<
    { } \\
    { < e b' >4 < d a' > }
  >> |
  s4\< \override Hairpin.to-barline = ##f s4\> |
  s4\sustainTap s4\sustainTap |

  %85
  <<
    { < ais cis gis' >4.) s8 } \\
    { s4. < a bis e >8->^( }
  >> |
  <<
    { r8 \clef treble < ais''' cis >4 s8 } \\
    { < fis,,, cis' >4.) \clef bass < a' e' >8^( }
  >> |
  s8\! s4 s8\> |
  s4.\sustainTap s8\sustainTap |

  %86
  <<
    { r8 \after 8. \stopTextSpan < cis' ais' cis >4\arpeggio e16^( fis } \\
    { < ais,, cis gis' >4.) < a' bis >8 }
  >> |
  <<
    { s8 \clef treble ais''4\arpeggio \clef bass \stemDown < a, e' >8^( } \\
    { < fis, cis' >4.) s8 }
  >> |
  s8\! s4 s8\ppp\> |
  s4\sustainTap s8\unaCorda s8\sustainTap |

  %87
  <<
    { \stemDown < ais cis gis' >2) } \\
    { s8 \stemUp \ottava 1 < cis' ais' cis >4.\arpeggio^\fermata }
  >> |
  <<
    { \stemUp < fis' cis' >2) } \\
    { s8 \clef treble \stemUp ais''4.\arpeggio^\fermata }
  >> |
  s8\! s4. |
  s4..\sustainTap s16\sustainOff |

}