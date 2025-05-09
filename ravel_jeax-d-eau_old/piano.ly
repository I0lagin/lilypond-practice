\version "2.24.4"

% pianoUpperTwo down there
% ignore hoge (replaced by pianoDynamicsBetween)

\parallelMusic pianoUpper,pianoLower,hoge,pianoPedal {

  %1
  dis''16( gis dis' fis dis gis, cis,32 gis' cis e) dis,16( gis dis' fis dis gis, cis,32 gis' cis e) |
  \repeat unfold 2 { < e' b' >8 < gis e' > < e' b' > < a, e' >}  |
  s1\ppDolcissimo |
  s4.\sustainOn s8\sustainTap s4.\sustainTap s8\sustainTap |


  %2
  \time 2/4
  dis,16( gis dis' fis \ottava 1 gis, dis' gis b) |
  < e b' >8[  < gis e' > < b e > < e b' >] |
  s2 |
  s2\sustainTap |

  \mBreak

  %3
  \time 4/4
  \repeat unfold 2 { gis,16( cis gis' cis gis cis, fis,32 bis e gis) } |
  \repeat unfold 2 { < a, e' >8  < cis a' > < a' e' > < d,, fis bis >\arpeggio } |
  s1 |
  s4.\sustainTap s8\sustainTap s4.\sustainTap s8\sustainTap |

  %4
  \divfour gis,16( cis  gis' cis) fis,,( c' e gis) \ottava 0 \diveight d,32( gis c e cis a eis b) gis( d'  fis ais g d b eis,) |
  < a' e' >8[(  < cis a' >] < fis, c' >[  < d a' >]) \clef bass < bes a' >  < g eis' >  < e d' >  < cis b' >  |
  s1 |
  s4\sustainOn s4\sustainOff \repeat unfold 2 { s8\sustainOn s8\sustainOff } |

  \mBreak

  %5
  \divfour \repeat unfold 2 {d16( gis c e \stemUp c gis < eis g >32 b' d g)} |
  <<
    { r8 < bes' gis' >8.^> s16 r8 r8 < bes gis' >8. s16 r8} \\
    { \repeat unfold 2 { < bes, gis' >4.( < cis b' >8) } }
  >>|
  s1 |
  \repeat unfold 2 { r4.\sustainOn r8\sustainOff} |

  %6
  d,16( gis c e c gis d e ) \diveight d32([ c d e r gis ais bis d e fis gis)] \divsixteen \acciaccatura { < g b >8 } \stemDown b,64 cis dis eis gis a b cis |
  <<
    { r8 < bes' gis' >4-> < bes_~ gis'^~ >8-> \stemDown q8 < gis bis fis'> < fis ais e' > < f a dis > } \\
    { < bes, gis' >2 s2 }
  >> |
  s2 s2\> |
  s2\sustainOn s2\sustainOff |

  \mBreak

  %7 el monke
  \divfour \acciaccatura { < gis dis' >16 } dis16( gis dis' fis dis gis, cis,32 gis' cis e) dis,16( gis dis' fis dis gis, cis,32 gis' cis e) |
  < e, b' gis' >8 \clef treble < e'' b' > < dis gis dis' > < a e' > < e b' gis' > < e' b' > < dis gis dis' > < a e' > |
  s1\pp |
  \repeat unfold 2 { r4.\sustainOn r8\sustainOff} |

  %8
  \time 2/4
  dis,16( gis dis' fis gis, dis' gis b) |
  < e b' gis' >8[ < e' b' > < dis gis dis' > <b' e b' >]  |
  s2 |
  s2\sustainOn |

  \pBreak

  %9
  \time 4/4
  \repeat unfold 2 { e,16( b e, b a' e a,32 e a e') } |
  \repeat unfold 2 { < cis gis' >8([ < gis' cis >)] < fis, cis' >( < cis' fis >) } |
  s1 |
  \repeat unfold 4 { s4\sustainOn } |

  %10
  e'16( b e, b a' e a, e) fis( gis cis fis gis, cis fis cis') |
  < cis gis' >8([ < gis' cis >)] < fis, cis' >( < cis' fis >) < a, dis >-. < dis~ a' >4-> < dis fis dis' >8-. |
  s1 |
  s4\sustainOn s4\sustainOn s4.\sustainOn s8\sustainOff |

  \mBreak

  %11
  \omit TupletBracket
  \tupletUp
  r16 < cis, gis' >( < cis' gis' > < cis, gis' >) \diveight r32 \ottava 1 cis'( gis' cis gis' cis, gis cis,) \ottava 0 \tuplet 3/2 { r16 \once \override Slur.positions = #'(4 . 6) fis,([ gis } \tuplet 3/2 { cis fis cis)] } gis32( cis gis cis \ottava 1 fis cis' fis, cis') |
  \clef bass < cis, gis' >8[ < cis' gis' >] \clef treble q < cis' gis' > < a d >( < d a' > q  < fis d' >) |
  s1 |
  s2\sustainOn s2\sustainOn | 

  %12
  \time 1/4
  \ottava 0 r16 < cis,, gis' >( < cis' gis' > < cis, gis' >) |
  < cis, gis' >8 < gis' cis > |
  s4 |
  s8\sustainOn s16 s16\sustainOff |

  \mBreak

  %13
  \time 4/4
  \ottava 1 r32 d( a' d a' d, a d,) r16 < gis cis >( < gis' cis > < gis, cis >) r32 a( d a' d a d, a) r16 < cis gis' >( < cis' gis' > < cis, gis' >) |
  < cis gis' >8[( < b fis' >)] < cis, gis' > < gis' cis > < gis' cis >([ < fis b >]) < cis gis' > < gis' cis >  |
  s1\< |
  s4 s4\sustainOn s4\sustainOff s4\sustainOn |

  %14
  r32 d( a' d a' d, a d,) r a( d a' d a d, a) \ottava 0 r d,( a' d a' d, a d,) r a( d a' d a d, a) |
  \stemDown < cis gis' >8([ < b fis' >]) < gis cis >( < fis b >) < cis gis' >[( < b fis' >)] < gis cis >( < fis b >) |
  s1\ff\> |
  s1\sustainOff |

  \mBreak

  %15
  \omit TupletBracket
  \omit TupletNumber
  % gotta do it dirty for the beams
  \diveight \repeat unfold 2 { \tuplet 3/2 { r16 < gis cis >([ gis') } \tuplet 3/2 { r16 < gis, cis >( gis') } \tuplet 3/2 { r16 < gis, cis >( gis') } \tuplet 3/2 { r16 < gis, cis >( gis')] } } |
  <<
    { r8 \clef treble b_!( gis_! fis_! gis_! b_! gis_! fis_! } \\
    { \clef bass < cis,, gis' >1 } \\
  >> |
  s1\f|
  s1\sustainOn|

  %16
  \stemUp \diveight \repeat unfold 4 { r32 cis,,( gis' cis gis' cis, gis cis,) } |
  <<
    { \clef bass \stemDown cis''8) < b e >^! < gis e'>^! < fis e' >^! < gis e' >^! < b e >^! < gis e' >^! < fis e' >^! } \\ % for slur
    { s1 }
  >> |
  s1\> |
  s1\sustainOn |

  \mBreak

  %17
  \time 2/4
  \clef bass \stemDown \diveight r32 cis,[( gis' cis) r gis( cis gis')] \clef treble r32 cis[( gis' cis) r gis( cis gis')] |
  \once \override Hairpin.rotation = #'(3 -2 0) cis8[(-!_\< gis'-! cis-! gis'])-!\! |
  s2\! |
  s2\sustainOn |

  %18
  \time 4/4
  % gotta do dirty for the beams
  r32 cis,,([ gis' cis) r32 cis,( gis' cis) r32 cis,( gis' cis) r32 cis,( gis' cis)] r32 cis,([ gis' cis) r32 cis,( gis' cis) r32 cis,( gis' cis) r32 cis,( gis' cis)]   |
  \clef treble \repeat unfold 8 { cis8 }|
  s2.\mf\> s8. s16\!  |
  s1 |
  
  % the pBreak here is in m.19 after the grace notes

  %19

  \bar "" \grace { \toLower b,,64^(\sustainOn^\markup \raise #15 { \italic "rapido" } cis e fis \toUpper \stemDown < a b > < e' fis >) } \bar "|" \pBreak \tuplet 6/4 { < a b >16( < e fis > < a, b > q < e' fis > < a b >) } \repeat unfold 3 { \tuplet 6/4 { < a b >16( < e fis > < a, b > q < e' fis > < a b >) } } |
  < cis cis' >8-.( < dis dis' >-. < cis cis' >-. < fis fis' >16-. < dis dis' >-. < cis cis' >8-.[ < gis gis' >-.)] q( < fis fis' >) |
  s2\pp s4 s8.\> s16\! |
  s2\unaCorda s2\sustainOn |

  %20
  \repeat unfold 4 { \tuplet 6/4 { < a b >16( < e fis > < a, b > q < e' fis > < a b >) } } |
  \stemUp \acciaccatura { b,8 } < cis cis' >8-.( < dis dis' >-. < cis cis' >-. < fis fis' >16-. < dis dis' >-. < cis cis' >8-. < gis gis' >)-. q([_\> < fis fis' >)]\! |
  s1 |
  \repeat unfold 3 { s4\sustainOn } s8.\sustainOn s16 |

  

  \mBreak

  %21
  < cis, fis cis' >8( < dis gis dis' > < cis fis cis' > < fis b fis' >16 < dis gis dis' > < cis fis cis' >8) < gis cis gis' > q([ < fis b fis' >)] |
  \diveight \clef bass b,32( cis e a \clef treble b cis e a b, cis e a e' a, e cis b[ cis e a b, cis e a] b,[ cis e a b, cis dis a']) |
  s2\< s2\!\> |
  \once \override UnaCordaPedal.X-offset = #2 s4\sustainOn\treCorde s4\sustainOn s4.\sustainOn s8\sustainOff |

  

  %22
  \stemUp < e a e' >8( < fis cis' fis>16 < e a e' > < cis fis cis' >4) < e a e' >8( < fis cis' fis>16 < e a e' > < cis fis cis' >16 < b e b' > < cis fis cis' >8) |
  \clef bass <<
    { gis,8 fis e4^> cis^> b^> } \\
    { \set subdivideBeams = ##t \diveight gis'32^( a cis e) fis,^( a cis e) \override Slur.positions = #'(2 . 0) e,^( fis a cis e cis a fis) cis^( e fis a cis a fis e) b^( cis e fis a fis e cis) } 
  >> |
  s1\! |
  \repeat unfold 4 { s4\sustainOn } |

  \mBreak

  %23
  < e a e' >8-.( < fis cis' fis >-. < e a e' >-. < cis fis cis' >-.) < b e b' >4( < cis fis cis' >) |
  <<
    { a4->  gis->  fis->  e->  } \\
    { \diveight \override Slur.positions = #'(1 . 0) a32^( cis e fis a fis e cis) gis^( cis e fis a fis e cis) fis,^( a cis e fis e cis a) e^( a cis e fis e cis a) }
  >> |
  s1\< |
  \repeat unfold 4 { s4\sustainOn } |

  \mBreak

  %24
  \revert Slur.positions
  \divfour \stemDown < cis fisis cis' >8( < dis ais' dis > < e b' e > < a d a' >) < cis, fisis cis' >16( < dis ais' dis > < fisis cis' > < dis ais' dis > < e b' e >8 < a d a' >) |
  \stemDown < dis, ais' >32( dis' eis fisis cis' fisis, eis dis) < g, d' >(  f' a b f' b, a f) < dis, ais' >(  dis' eis fisis cis' fisis, eis dis) < g, d' >(  f' a  b f' b, a f) |
  s1\ppSubito |
  s4\unaCorda \repeat unfold 3 { s4\sustainOn }|

  \mBreak

  %25
  \stemDown < cis fisis cis' >8( < dis ais' dis > < e b' e > < a d a' >) \ottava 1 < cis fisis cis' >16( < dis ais' dis > < fisis cis' > < dis ais' dis > < e b' e >8 < a d a' >) |
  \stemDown < dis ais' >32(  dis' eis fisis \clef treble cis' fisis, eis dis) < g, d' >(  f' a b f' b, a f) < dis ais' >(  dis' eis fisis cis' fisis, eis dis) < g, d' >(  f' a  b f' b, a f) |
  s1\< |
  \once \override UnaCordaPedal.X-offset = #2 s4\sustainOn\treCorde \repeat unfold 3 { s4\sustainOn } |

  %26 tremolo
  \ottava 0 \repeat unfold 2 { \repeat tremolo 8 { < g, d' >32 < ees' g > } } |
  < ees, bes' ees >8 bes'''-> r4 < ees,, bes' >8 bes''-> r4 |
  s1\ff |
  s1\sustainOn |

  \pBreak

  %27
  \diveight r32 g,[^( d' g) r g^( d g,)] \stemUp r g[_( d g,) r g_( d g,)] r g[_( d' g) r g_( d' g)] \stemNeutral r g[^( d' g) r g^( d g,]) |
  < ees,, bes' >8[-! < ees' bes' >]-! < ees, bes' >-! < ees, bes' >-! \stemUp < ees, bes' >[-! < ees' bes' >]-! \stemNeutral < ees' bes' >-! < ees' bes' >-! |
  s1 |
  s1 |

  \mBreak

  %28
  r32 g[( d' g) r g( d g,]) r g[( d' g) r g( d g,]) r g[( d' g r16 d-.]) r < g, d' >-.( g'-. < g, d' >-.) |
  < ees, bes' >8[-! < ees' bes' >]-! < ees, bes' >-! < ees' bes'>-! < ees, bes' >[-! < ees' bes'>]-! < d, bes' >-! < ees' bes'>-! |
  s1\> |
  s2. s8. s16\sustainOff |

  \mBreak

  %29
  \tempo\markup{"a Tempo"} \diveight < cis, gis' >16(\( < eis ais >) q( < cis gis' >) < b fis' >( < dis gis >) q( < b fis' >) < cis gis' >( < eis ais >) q( < cis gis' >) < b fis' >( < dis gis >) q( < b fis' >)\) |
  \repeat unfold 2 { < b dis >8-.(  < cis eis >-. < a cis >  < dis gis >16 < a cis >) } |
  s1\pp |
  \once \override UnaCordaPedal.X-offset = #2 s4\sustainOn\unaCorda \repeat unfold 3 { s4\sustainOn } |

  %30
  < cis gis' >16(\( < eis ais >) q( < cis gis' >) < b fis' >( < dis gis >) q( < b fis' >) < a e' >( < cis fis >) q( < a e' >) < gis dis' >( < bis eis >) q( < gis dis' >)\) |
  < b dis >8(-.  < cis eis >-. < a cis >-.  < b dis >-. < g b >-.  < a cis >-. < fis ais >-.  < gis bis >-.) |
  s1 |
  \repeat unfold 4 { s4\sustainOn } |

  \mBreak

  %31. here goes nothing
  \override Stem.details.beamed-lengths = #'(5)
  \stemUp < bis fis' ais >16_(^\( ais) < ais bis fis' >_( gis) < ais e' gis >_( gis) < gis ais e' gis >_( < fis fis' >) < bis fis' ais >16_( ais) < ais bis fis' >_( gis) < ais e' gis >_( gis) < gis ais e' gis >_( < fis fis' >)\) |
  \clef bass \stemDown \repeat unfold 2 { \toLower < gis,, dis' fis >8[  \toUpper < gis'' bis >]^\markup{ \italic "l.h." } \toLower < fis,, cis' e >[  \toUpper < ais'' dis >]->^\markup{ \italic "l.h." } } |
  s1 |
  \repeat unfold 4 { s4\sustainOn } |

  %32
  \revert Stem.details.beamed-lengths
  \stemUp < bis fis' ais >16_(^\( ais) < ais bis fis' >_( gis) < ais e' gis >_( gis) < gis ais e' >_( fis) < gis d' fis >_( fis) < fis gis d' >_( e) < ais cisis eis >_( eis cisis eis)\) |
  \stemDown \toLower < gis,, dis' fis >8[  \toUpper < gis'' bis >]^\markup{ \italic "l.h." } \toLower < fis,, cis' e >  \toUpper < fis'' ais >^\markup{ \italic "l.h." } \toLower < e,, b' d >[  \toUpper < e'' gis >]^\markup{ \italic "l.h." } \toLower < ais,,, eis' ais >  \toUpper ais''^\markup{ \italic "l.h." } |
  s1 |
  \repeat unfold 4 { s4\sustainOn } |

  \mBreak

  %33
  \stemUp < gis d' fis >16^\(_( fis) < fis gis d' >_( e) < ais cisis eis >_( eis) cisis_( eis)\) < gis d' fis >_(^\( fis) < fis gis d' >_( eis) < ais cisis eis >_( eis) cisis_( eis)\) |
  \stemDown \repeat unfold 2 { \toLower < e, b' d >8[  \toUpper < e'' gis >]^\markup{ \italic "l.h." } \toLower < ais,,, eis' ais >  \toUpper ais''^\markup{ \italic "l.h." } } |
  \repeat unfold 2 { s8.\> s16\! s4 } |
  \repeat unfold 4 { s4\sustainOn } |

  %34
  \undo \omit TupletNumber
  \tupletUp
  \stemNeutral < gis, d' fis >16( < e' gis > < fis b >32 d  < gis d' >16 < gis d' fis >16 < e' gis > < fis b >32 d  < gis d' >16 \ottava 1 < gis d' fis >16 < e' gis > < fis b >32 d  < gis d' >16) \divsixteen \tuplet 3/2 { eis'32[( cisis ais } \tuplet 3/2 { eis32 cisis ais } \omit TupletNumber \tuplet 3/2 { eis32 ais cisis } \tuplet 3/2 { eis32 ais cisis)] } |
  \toLower < b,, e b' >8[ cis'_(->] \clef treble < b e b' >) cis'->_( < b e b' >) cis'16( b \stemUp ais,)( < eis' ais  cisis >) r q |
  s2.\< s4\p |
  s8\sustainOn s8\sustainOff s8\sustainOn s8\sustainOff s4\sustainOn s4\treCorde |

  \pBreak

  %35
  \undo \omit TupletNumber
  \tupletDown
  \diveight fis32( d b fis) gis'( d b gis) \divsixteen \tuplet 3/2 { eis'32[( cisis ais } \tuplet 3/2 { eis32 cisis ais } \omit TupletNumber \ottava 0 \tuplet 3/2 { eis32 cisis ais } \tuplet 3/2 { eis32 ais cisis)] } \diveight fis32( d b fis) gis'( d b gis) eis'( cisis ais eis cisis ais \toLower \clef bass \stemUp eis ais, )  |
  <<
    { gis,16 < d' fis b >8 q16 ais,16[ < eis' ais cisis >] r8 s16 d8-> s16 \clef bass ais,16_([ < eis' ais cisis >]) r16 } \\
    { gis'4 ais,8. ais16 gis16[ cis8 b16] \clef bass ais,4_^ }
  >> |
  s1 |
  s4\sustainOn s4\sustainOn s4\sustainOff s4\sustainOn|

  \mBreak

  %36
  \toUpper \clef bass \stemNeutral \diveight < d fis b >16( cis' < b d >32 fis fis'16 \clef treble < d fis b >16 cis' < b d >32 fis fis'16 < d fis b >16 cis' < b d >32 fis fis'16) \ottava 1 \divsixteen \tuplet 12/8 { d'32( b g d b g d g b d g b) } |
  <<
    { \stemDown gis8[ ais'->]_( \stemUp \clef treble gis)[ ais']_>_( \stemDown gis)[ < ais ais' >16( < gis gis' >] \stemUp g)_( < d' g b >) r q } \\
    { s2. g,4 } 
  >> |
  s1 |
  \repeat unfold 2 { s8\sustainOn s8\sustainOff } s4\sustainOn s8.\sustainOn s16\sustainOff |

  \mBreak

  %37 spaghetti!
  <<
    { \omit TupletBracket \omit TupletNumber
      \set subdivideBeams = ##t \diveight
      \stemDown dis32( ais fis dis) eis'( ais, fis eis) \tuplet 12/8 { \divsixteen d'32( b g d b g \ottava 0 d b g d g b) } \stemUp \diveight dis32_( ais fis dis) eis'_( ais, fis eis) \stemUp \tuplet 6/4 { \divsixteen d'32^( b g \toLower d b g } \diveight d32 g b d)
    } \\
    { s2. s8. s32 \afterGrace s32 { \toLowerStem \clef treble \divtwo \once \override Slur.positions = #'(-20 . -3) ais32^( b \toUpperStem cis d \toLowerStem fis g \toUpperStem ais b \toLowerStem cis d \toUpperStem fis g \toLowerStem ais b \toUpperStem cis dis) } }
   >> |
  <<
    { bis,16[ < fis' ais dis >8 q16] g,16_( < d' g b >) \once \override Rest.Y-offset = #0 r8 \clef bass s16 < fis, ais >8.-> s4 } \\
    { bis4 s4 bis,16[ e8 dis16] \once \override Slur.positions = #'(0 . 5) g,16[^( < d' g b >)] r8 }
  >> |
  s1 |
  s4\sustainOn s4\sustainOn s4\sustainOff s4\sustainOn |

  \mBreak

  %38
  \toUpper \stemNeutral <<
    { d8^\markup { \italic "il canto un poco marcato" } cis fisis, gis b4 s4 } \\
    { \set subdivideBeams = ##t \diveight d32( fisis, eis dis) cis'( fisis, eis cis) fisis( eis b fisis) gis'( eis b gis) b'^([ g e b dis e eis fis g gis a ais b e dis d)] }
  >> |
  \divfour \clef treble \tuplet 3/2 { cis'8_( eis b' } cis8_\markup { \italic "(sopra)" } eis,) cis16^( e g b \stemDown e8 b) |
  s1\p |
  s4\sustainOff\sustainOn s4\sustainOn s2\sustainOn |

  \mBreak

  %39 (copy of above)
  \toUpper \stemNeutral <<
    { d8 cis fisis, gis b4 s4 } \\
    { d32( fisis, eis dis) cis'( fisis, eis cis) fisis( eis b fisis) gis'( eis b gis) b'^([ g e b dis e eis fis g gis a ais b e dis d)] }
  >> |
  \stemUp \tuplet 3/2 { cis,8_( eis b' } cis8 eis,) cis16^( e g b \stemDown e8 b) |
  s1 |
  s4\sustainOff\sustainOn s4\sustainOn s2\sustainOn |

  \pBreak

  %40
  <<
    { d8( cis e d) d( cis d e) } \\
    { d32^( b eis, d) cis'^( b eis, cis) e'^( b eis, e) d'^( b eis, d) d'^( b eis, d) cis'^( b eis, cis) d'^( b eis, d) e'^( b eis, e) }
  >> |
  <<
    { r8 r16 \clef treble < cis, eis b' >-! < e eis b' >8 < d eis b' > r8 \clef treble < cis eis b' > < d e b' > < e eis b' > } \\
    { \repeat unfold 2 { \clef bass cis,2_- } }
  >> |
  s2 s8 s4.\< |
  s2\sustainOn s2\sustainOn |

  \mBreak

  %41
  <<
    { g'8( fis bis, cis e4) s4 } \\
    { g32 bis, ais g fis' bis, ais fis bis ais e bis cis' ais e cis e'[^( c a e gis a ais b c cis d dis e a gis g)] }
  >> |
  \omit TupletBracket \undo \omit TupletNumber \tupletDown \stemUp fis16_( cis' e ais \stemDown e'8)-. ais,-. \diveight \stemUp \tuplet 3/2 { fis,16_( c' e } \tuplet 3/2 { a c e } \omit TupletNumber \tuplet 6/4 { a e c a e c) }  |
  s1\mp |
  s4\sustainOn s4\sustainOn s2\sustainOn |

  \mBreak

  %42
  \ottava 1 <<
    { g8( fis a g g fis g a) } \\
    { g32^( e ais, g) fis'^( e ais, fis) a'^( e ais, a) g'^( e ais, g) g' e ais, g fis' e ais, fis g' e ais, g a' e ais, a }
  >> |
  <<
    { r8 r16 < fis ais e' >_! < a ais e' >8_(_\> < g ais e' >)\! r8 < fis ais e' >8_( < g ais e' > < a ais e' >) } \\
    { \repeat unfold 2 { fis,2-- } }
  >> |
  s2 s8 s4.\< |
  s2\sustainOn s2\sustainOn |

  \mBreak

  %43
  << 
    { bis'8( ais dis, e g4) s4 } \\
    { bis32^( eis, cis bis) ais'^( eis cis ais) dis^( cis ais dis,) e'^( cis ais e) g'^( e b g gis a ais b bis cis d dis e eis fis g) }
  >> |
  <<
    { fisis16 cis' eis ais ais,8 < e' gis cis > cis16_( g' b e) < cis, g' b >8 < ais e' gis > } \\
    { fisis4-> ais-> cis-> s4 }
  >> |
  s1\f |
  s4\sustainOn s4\sustainOn s4.\sustainOn s8\sustainOff |

  \mBreak

  %44
  <<
    { bis8^( ais cis bis bis ais bis cis) } \\
    { bis32^( eis, cis bis) ais'^( eis cis ais) cis'^( gis e cis) bis'^( gis e bis) bis'^( eis, cis bis) ais'^( eis cis ais) bis'^( e, cis bis) cis'^( gis e cis) }
  >> |
  <<
    { \set subdivideBeams = ##t \omit TupletBracket \tupletDown \diveight \tuplet 3/2 { fisis,16_( cis' eis } \tuplet 3/2 { fisis cis' eis) } \divfour ais,16_( e' gis cis) \tuplet 3/2 { fisis,,8_( cis' eis) } ais,16_( e' gis ais) } \\
    { fisis,,4 ais' fisis ais }
  >>  |
  s1\cresc |
  \repeat unfold 4 { s4\sustainOn } |

  \pBreak

  %45
  << 
    { d'8( c ees d d c d ees) } \\
    { d32^( g, ees d) c'^( g ees c) ees'^( bes ges ees) d'^( bes ges d) d'^( g, ees d) c'^( g ees c) d'^( bes ges d) ees'^( bes ges ees) }
  >> |
  <<
    { \omit TupletNumber \tuplet 3/2 { a8_( ees' g) } c,16_( ges' bes ees) \tuplet 3/2 { a,,8_( ees' g) } c,16_( ges' bes c) } \\
    { a,4 c a c }
  >> |
  s1 |
  \repeat unfold 4 { s4\sustainOn } |

  \mBreak

  %46
  <<
    { eis'8( dis fis eis eis dis fis eis) } \\
    { \repeat unfold 2 { eis32^( ais, fis eis) dis'^( b g dis) fis'^( bis, gis fis) eis'^( cis a eis) } }
  >> |
  <<
    { \divfour \once \undo \omit TupletNumber \repeat unfold 2 { \tuplet 3/2 { bis16[_( fis' ais)] } \tuplet 3/2 { cis,_( g' b) } \tuplet 3/2 { d,[_( gis bis]) } \tuplet 3/2 { dis,_( a' cis) } } } \\
    { \repeat unfold 2 { bis,8_( cis d dis) } }
  >> |
  s1\ff |
  \repeat unfold 4 { s8\sustainOn s8\sustainOff } |

  \mBreak

  %47
  <<
    { eis'8( dis fis eis eis dis eis fis) } \\
    { eis32^( ais, fis eis) dis'^( b g dis) fis'^( bis, gis fis) eis'^( cis a eis) eis'32^( ais, fis eis) dis'^( b g dis) eis'^( bis gis eis) fis'^( cis a fis) }
  >> |
  <<
    { \divfour \once \undo \omit TupletNumber \repeat unfold 2 { \tuplet 3/2 { bis16[_( fis' ais)] } \tuplet 3/2 { cis,_( g' b) } \tuplet 3/2 { d,[_( gis bis]) } \tuplet 3/2 { dis,_( a' cis) } } } \\
    { \repeat unfold 2 { bis,8_( cis d dis) } }
  >> |
  s1 |
  \repeat unfold 4 { s8\sustainOn s8\sustainOff } |

  \mBreak

  %48 tremolo
  <<
    { s16 \ottava 0 s16 s8 \tuplet 10/8 { \tupletDown \toLower \stemUp gis,,32^( ais cis dis fis \toUpper \stemDown gis ais cis dis fis) } \repeat tremolo 8 { \toLower \ottava 0 \stemUp < gis,, ais cis >64 \toUpper \ottava 1 \stemDown < dis'' fis gis ais > } \omit TupletNumber \tuplet 25/16 { ais''64^( gis fis dis cis ais gis fis dis cis \ottava 0 ais gis^\markup { \italic "glissando" } fis dis cis ais gis fis dis cis \clef bass ais gis fis dis cis) } } \\
    { < ais'''' dis ais' >4 } \\
    { s2 \once \override Script.X-offset = 3 s4\fermata_\markup { \italic "lunga" } s4 }
  >>  |
  \undo \omit TupletNumber \tupletDown \tuplet 10/8 { \divfour \toLower \stemUp gis,,32^( ais cis dis fis \toUpper \stemDown gis ais cis dis fis) } s2. |
  s2 \once \override DynamicText.X-offset = -3 s2\fff |
  s1\sustainOn |

  \mBreak

  %49
  \time 2/4
  \diveight \repeat unfold2 { r32 cis,,,,( dis fis ais fis dis cis) } |
  \toLower \clef bass <<
    { s2 } \\
    { \stemUp gis,,,8-. gis,-. \ottava -1 a,4->~ }
  >> |
  s2 |
  s4 s4\sustainOn |

  %50
  \time 4/4
  R1 |
  \ottava 0 <<
    { \diveight gis''32( cis dis fis ais fis dis cis) \repeat unfold 3 { gis32( cis dis fis ais fis dis cis) } } \\
    { \once \hideNotes a,,1 } \\
    { a'1 }
  >> |
  s1\> |
  s1 |

  \pBreak

  %51
  \tempo "Tempo I"
  \clef treble < ais' dis >8[_( < bis eis >] < a d > < fis' a >16 < a, dis > < ais dis >8[ < bis eis >] < a d >) r |
  \diveight \repeat unfold 2 { gis'32^([ cis fis ais r a fis d)] gis,^( d' fis a bis a fis d) } |
  s1\p |
  \once \override UnaCordaPedal.X-offset = #2 s8\sustainOn\unaCorda s8\sustainOff s4\sustainOn s8\sustainOn s8\sustainOff s4 |

  \mBreak

  %52
  \stemUp < dis ais' dis >8[_( < eis bis' eis > < d a' d > < fis' a >16 < a, d >] < dis, ais' dis >8 < eis bis' eis > < d a' d > < d a' >16) r |
  \repeat unfold 2 { gis,32( cis fis ais bis a fis d) gis,( d' fis ais bis ais fis d) } |
  s1 |
  \repeat unfold 2 { s8\sustainOn s8\sustainOff s4\sustainOn }|

  \mBreak

  %53 vshape
  \clef bass r4 bis,8_( a16) r r4 \stemDown bis'16.^>( \toLower \stemUp a32) r8 |
  \repeat unfold 3 { gis,32( d' fis ais bis ais fis d) }
  \shape #'((0 . -15) (0 . -9) (3 . -20) (0 . -7)) Slur
  gis,([ d' fis ais] \toUpper \stemUp \clef treble < bis d > fis' ais d) |
  s4 s2.\pp|
  s2. s8. s16\sustainOff |

  


  %54
  \time 2/4
  \stemNeutral \toUpper gis'32( dis' fis gis < bis, d > fis a d) \ottava 1 gis( dis' fis gis < bis, d > gis bis d) |
  \toLower \clef treble < bis, bis' >8_\>_( < a a' >16\!) r < bis' bis' >8^\>^( < a a' >16)\! r |
  s2\< |
  \once \override UnaCordaPedal.X-offset = #1.7 s8\sustainOn\treCorde s8\sustainOff s8\sustainOn s8\sustainOff |

  \mBreak

  %55
  \time 3/4
  \toLower \stemUp \ottava 0 < fis,, cis' >32[ \toUpper \stemDown \ottava 1 < bis' d a' > a q] \toLower \stemUp \ottava 0 \once \override Slur.positions = #'(-15 . 0) < fis, cis' >^( \toUpper \stemDown \ottava 0 < bis d a' > a q) r \stemNeutral < d, fis a >_( cis bis b ais a gis) \clef bass r < d fis a >_( cis bis b ais a gis)  |
  s4 \clef bass \stemDown gis,8^.[ gis,^.] \stemUp \ottava -1 gis,_. a,_^ \ottava 0 |
  s2.\f |
  s4\sustainOn s2\sustainOff |

  \mBreak

  %56
  \time 4/4
  \clef treble < bis' eis >8[_( < d g >] < b e > < gis' b >16 < b, e >) \stemUp < eis bis' eis >8_( < g d' g > < e b' e > < e b >16) r |
  \clef bass \stemNeutral gis''32[^( eis' gis bis r b gis e)] gis,( e' gis b d b gis e) gis,( eis' gis bis d b gis e) gis,( e' gis b d b gis e) |
  s1\p |
  \once \override UnaCordaPedal.X-offset = #2 s8\sustainOn\unaCorda s8\sustainOff s4\sustainOn s8\sustainOn s8\sustainOff s4\sustainOn |

  \pBreak

  %57
  \time 2/4
  r4 \clef bass \stemDown d,8^> \toLower \stemUp b16 r |
  gis,32^( e' gis b d b gis e) gis,^([ e' gis b] \toUpper \clef treble < d e > gis b e) |
  s2 |
  r4.\sustainOn r16. r32\sustainOff |

  %58
  \toUpper \clef treble \stemDown gis''32( dis' gis b < d, e > gis b e) \ottava 1 gis,( dis' gis b < d, e > gis b e) |
  \toLower \clef treble < d, d' >8_\>_( < b b' >16\!) r < d' d' >8^\>^( < b b' >16\!) r |
  s2 |
  s8\sustainOn\treCorde s8\sustainOff s8\sustainOn s8\sustainOff |

  \mBreak

  %59
  \time 3/4
  \toLowerStem \ottava 0 \once \override Slur.positions = #'(-15 . 0) < gis,,, dis' >32[^( \toUpper \stemDown \ottava 1 < d'' e b' > b q)] \toLowerStem \ottava 0 \once \override Slur.positions = #'(-15 . 0) < gis, dis' >^( \toUpper \stemDown \ottava 0 < d' e b' > b q) r \stemUp < e, gis b >_( dis d cis bis b ais) \clef bass r < e gis b >_( dis d cis bis b ais) |
  s4 \clef bass gis,8[_. gis,]_. \ottava -1 gis,_. a,_^ \ottava 0 |
  s2. |
  s4\sustainOn s2\sustainOff |

  \mBreak

  %60
  \time 4/4
  \clef treble < cis' fis >8_( < dis gis > < bis eis > < eis bis' >16 < bis eis >) << 
    { c''8 d b fis }  \\
    { \set subdivideBeams = ##t \diveight c'32^( g e c) d'^( a fis d) b'^( fis d bis) fis'^( d cis bis) }
  >> |
  gis''32[^( cis fis ais r bis gis dis]) gis,^( eis' ais cisis < dis, gis > bis' < eis, ais > cisis') <<
    { < g c e >8.^( < a d fis >8 < b e gis >16 < a d fis > < b e gis >) } \\
    { r16 < gis,, gis' >~_> q4. }
  >> |
  s2\mf\< s2\! |
  s8\sustainOn s8\sustainOff s8\sustainOn s8\sustainOff s8\sustainOn s8\sustainOn s8\sustainOn s8\sustainOff |

  \mBreak

  %61
  <<
    { s4 fisis'8_( eis16 bis) \ottava 1 fis''8^>^\markup { \italic "rall. leggermente" } gis^> a^> b^> } \\
    { < fis, cis' >8^( < gis dis' > < gis bis >4) \ottava 1 fis'32 cis ais fis gis' dis bis gis a'[ e cis < g a >] fis'16 < ais, bis > }
  >> |
  \clef treble gis''32[_( cis fis ais r bis gis dis]) gis, eis' ais cisis < dis, gis > bis' < eis, ais > cisis' <<
    { < cis, fis ais >8. \clef treble < dis gis bis >8 < e a cisis > < fis b dis >16 } \\
    { r16 \clef bass < gis,,, gis' >16~ q4. }
  >> |
  s2\f s2\> |
  s8\sustainOn s8\sustainOff s8\sustainOn s8\sustainOff s8\sustainOn s8\sustainOn s8\sustainOn s8\sustainOff |

  \pBreak

  %62
  \tempo "Tempo I"
  \ottava 0 \stemNeutral \repeat unfold 2 { \divfour dis,16( gis dis' fis \diveight dis gis, cis,32 gis' cis e) } |
  \repeat unfold 2 <<
    { r8 \clef treble < e''' b' >8 < e' b' >[ < a, e' >] } \\
    { \clef bass gis,,2_- }
  >> |
  s1 \pp |
  \once \override UnaCordaPedal.X-offset = #2 s4.\sustainOn\unaCorda s8\sustainOff s4.\sustainOn s8\sustainOff |

  %63
  \time 2/4
  \divfour dis,16( gis dis' fis \ottava 1 gis, dis' gis b) |
  <<
    { r8 \clef treble < e'' b' >[ < b' e > < e b' >] } \\
    { \clef bass gis,,,2_- }
  >> |
  s2 |
  s2\sustainOn |

  \mBreak

  %64
  \time 4/4
  \repeat unfold 2 { \divfour gis,16( cis gis' cis \diveight gis cis, fis,32 bis e gis) } |
  \repeat unfold 2 <<
    { r8 \clef treble < a'' e' >8 < a' e' >[ < d,, fis bis >] } \\
    { \clef bass < gis,,, gis' >2 }
  >> |
  s1 |
  \repeat unfold 2 { s4.\sustainOn s8\sustainOff } |

  %65
  \stemDown r32 gis,^([ cis gis' cis gis cis, gis)] r cis,^([ gis' cis gis' cis, gis cis,)] \ottava 0 r gis32^([ cis gis' cis gis cis, gis)] r cis,^([ gis' cis gis' cis, gis cis,)] |
  <<
    { r8 \clef treble < a'''' e' >8 < a, e' >[ < e' a >] < e, a >[ < a e' >] < a, e' > < e' a > } \\
    { \clef bass < gis,,, gis' >1 }
  >> |
  s1\mf |
  s1\sustainOn |

  \mBreak

  %66
  \stemUp \repeat unfold 4 { r32 gis_( cis gis' cis gis cis, gis) } |
  \clef bass <<
    { \repeat unfold 8 < e'' a >8 } \\
    { r2 gis,2_~_> }
  >> |
  s1\> |
  s2. s8. s32 s32\sustainOff |

  %67
  \time 2/4
  \undo \omit TupletNumber
  \tupletDown
  \tuplet 5/4 { \toLower \stemUp < gis, dis' gis >32[^( \toUpper \clef bass \stemDown e' a c e]) } %1
  \tuplet 5/4 { \toLower \stemUp \clef treble < fis, dis' gis >32^([ \toUpper \stemDown \clef treble e' a c e)] } %2
  \omit TupletNumber
  \tuplet 5/4 { \toLower \stemUp < fis, dis' gis >32^([ \toUpper \stemDown e' a c e)] } %3
  \ottava 1
  \tuplet 5/4 { \toLower \stemUp < fis, dis' gis >32^([ \toUpper \stemDown e' a c e)] } %4
  |
  <<
    { s4 s16 \once \override Score.OttavaBracket.transparent = ##t \ottava 1 s16 s8 } \\ % %shifting timing for l.h. ottava & hiding it
    { \once \hideNotes gis2 }
  >> |
  \once \override DynamicText.X-offset = -3 \once \override Hairpin.Y-offset = -3 s2\pp\< |
  s2\sustainOn |

  \mBreak

  %68 here goes nothing
  \time 4/4
  \undo \omit TupletNumber
  \tupletDown
  \override Slur.positions = #'(-15 . -3) 
  \tuplet 7/4 { \toLowerStem fis,32^([ gis dis' \toUpperStem a c e a)] }      %1
  \tuplet 7/4 { \toLowerStem fis,32^([ ais cisis \toUpperStem b dis fis b)] } %2
  \tuplet 7/4 { \toLowerStem e,,32^([ fis cis' \toUpperStem g bes d g)] }     %3
  \tuplet 7/4 { \toLowerStem e,32^([ gis bis \toUpperStem a cis e a)] }       %4
  \tuplet 7/4 { \toLowerStem d,,32^([ e b' \toUpperStem f aes c f)] }         %5
  \tuplet 7/4 { \toLowerStem d,32^([ fis ais \toUpperStem g b d g)] }         %6
  \tuplet 7/4 { \toLowerStem c,,32^([ d a' \toUpperStem ees ges bes ees)] }   %7
  \tuplet 7/4 { \toLowerStem c,32^([ e gis \toUpperStem f a c f)] } |         %8
  \repeat unfold 8 s8 |
  s8\! s8*7 |
  \repeat unfold 8 s8\sustainOn |

  \mBreak

  %69
  \omit TupletNumber
  \tuplet 7/4 { \toLowerStem a,,32^([ b fis' \toUpperStem c ees g c)] }         %1
  \tuplet 7/4 { \toLowerStem fis,,32^([ gis dis' \toUpperStem a cis e ais)] }   %2
  \tuplet 7/4 { \toLowerStem dis,,32^([ eis bis' \toUpperStem fis a cis fis)] } %3
  \tuplet 7/4 { \toLowerStem c,32^([ d a' \toUpperStem ees ges bes ees)] }      %4
  \ottava 0
  \tuplet 7/4 { \toLowerStem a,,32^([ b fis' \toUpperStem c ees g c)] }         %5
  \tuplet 7/4 { \toLowerStem fis,,32^([ gis dis' \toUpperStem a c e a)] }       %6
  \tuplet 7/4 { \toLowerStem dis,,32^([ eis bis' \toUpperStem fis a cis fis)] } %7
  \tuplet 7/4 { \toLowerStem c,32^([ d a' \toUpperStem ees ges bes ees)] } |    %8
  s8*4 \ottava 0 s8*4 |
  s8*8 |
  \repeat unfold 8 s8\sustainOn |

  \pBreak
  \revert Slur.positions

  %70
  \tuplet 3/2 { r16 << { c^([ ais)] } \\ { < e g >8 } >> }                      %1
  \tuplet 3/2 { r16 << { c^([ ais)] } \\ { < e' g >8 } >> }                     %2
  \clef bass \tuplet 3/2 { r16 << { c^([ ais)] } \\ { < g e' >8 } >> }          %3
  \repeat unfold 2 { \tuplet 3/2 { r16 << { c^([ ais)] } \\ { < e g >8 } >> } } %4, 5
  \tuplet 3/2 { r16 << { c^([ ais)] } \\ { < e' g >8 } >> }                     %6
  \tuplet 3/2 { r16 << { e^([ ais,)] } \\ { < g c >8 } >> }                     %7
  \tuplet 3/2 { r16 << { c^([ ais)] } \\ { < e g >8 } >> } |                    %8
  \clef bass \repeat unfold 2 { fis'8[ fis'] } \repeat unfold 2 { fis,,8[ fis'] } |
  s8 s8\> s2. |
  s4\sustainOn s2.\sustainOff |

  %71
  \tuplet 3/2 { r16 << { c'^([ ais)] } \\ { < e g >8 } >> } %1
  \repeat unfold 7 { \tuplet 3/2 { r16 << { c^([ ais)] } \\ { < e' g >8 } >> } } %2-8
  |
  \repeat unfold 4 { fis,,8[ fis'] } |
  s4 s2.\ppp |
  s1 |

  \mBreak

  %72 part two i guess. dynamics outsourced
  \tuplet 7/4 { \toLowerStem fis,32([ ais cis \toUpperStem c e g c]) } %1
  \tuplet 7/4 { \toLowerStem fis,32([ ais cis \toUpperStem c e g c]) } %2
  \tuplet 7/4 { \toLowerStem \clef treble fis,32([ ais cis \toUpperStem \clef treble c e g c]) } 
  %3
  \tuplet 7/4 { \toLowerStem fis,32([ ais cis \toUpperStem c e g c]) } %4
  \ottava 1 \tuplet 7/4 { \toLowerStem fis,32([ ais cis \toUpperStem c e g c]) } %5
  \tuplet 5/2 { \toLowerStem < fis, ais cis >32([ \toUpperStem c' g e c]) } %6
  \ottava 0 \tuplet 5/2 { \toLowerStem < fis, ais cis >32([ \toUpperStem c' g e c]) } %7
  \tuplet 5/2 { \toLowerStem < fis, ais cis >32([ \toUpperStem c' e g c]) } %8
  \ottava 1 \tuplet 5/2 { \toLowerStem < fis, ais cis >32([ \toUpperStem c' e g c]) } %9
  \tuplet 5/2 { \toLowerStem < fis, ais cis >32([ \toUpperStem c' g e c]) } %10
  \ottava 0 \tuplet 5/2 { \toLowerStem < fis, ais cis >32[ \toUpperStem c' g e c] } %11 
  |
  s4 s8 s16 s32\ottava 1 \once \override Score.OttavaBracket.transparent = ##t s32 s8 s32\ottava 0 s32 s16 s32\ottava 1 \once \override Score.OttavaBracket.transparent = ##t s32 s16 s32\ottava 0 s32 s16 | %shifting timing for l.h. ottava & hiding it. just works!
  \once \override DynamicText.X-offset = -3 s1\ppp | 
  \once \override UnaCordaPedal.X-offset = #2
  \once \override Hairpin.Y-offset = -1
  s2\sustainOn\treCorde\< s8 \once \override DynamicText.Y-offset = -1.5 s4.\fff |
  \override Score.BarLine.transparent = ##t
  \override PianoStaff.SpanBar.transparent = ##t

  \mBreak

  %73
  << 
    { \omit TupletNumber
      \repeat unfold 4 {  \tuplet 5/2 { \toLowerStem < fis, ais cis >32[ \toUpperStem c' e g c] } 
                          \tuplet 5/2 { \toLowerStem < fis, ais cis >32[ \toUpperStem c' g e c] } } %1-8
      \repeat unfold 4 {  \tuplet 5/2 { \toLowerStem < fis, ais cis >32[ \toUpperStem g c e g] } 
                          \tuplet 5/2 { \toLowerStem < fis ais >32[ \toUpperStem g e c g] } } %9-16
    } \\
    { s2^\< s2^\f^\> }
  >> |
  s2 s4 s8 \mBreak s8 |
  s1 |
  s2\sustainOn s2\sustainOff\sustainOn |

  %74
  << 
    {
      \repeat unfold 4 {  \tuplet 5/2 { \toLowerStem < fis ais >32[ \toUpperStem g c e g] } 
                          \tuplet 5/2 { \toLowerStem < cis, fis >32[ \toUpperStem g' e c g] } } %1-8
      \repeat unfold 4 {  \tuplet 4/2 { \toLowerStem < fis ais >32[ \toUpperStem g c e] } 
                      \tuplet 4/2 { \toLowerStem < cis fis >32[ \toUpperStem e c g] } } %9-16
    } \\
    { s16\mf s16^\dim s8 s4 s4\p\> s4*15/16^\markup{\italic "rall."} s64\! }
  >>
  |
  s2 s4 s16 \mBreak s16 s8 |
  s1 |
  s2\sustainOff\sustainOn s4.\sustainOn s16. s32\sustainOff |

  \override Score.BarLine.transparent = ##f
  \override PianoStaff.SpanBar.transparent = ##f


  %75 back to our regular schedule
  \stemUp
  < f c' >16(^\(\!^\markup{\italic "Un poco più lento del principio"} < a d >) q( < f c' >) < ees bes' >( < g c >) q( < ees bes' >)
  < f c' >16( < a d >) q( < f c' >) < ees bes' >( < g c >) q( < ees bes' >) |
  \stemDown \repeat unfold 2 { < ees''' g >8-.( < f a >-. < des f >-.) < g c >16( < des f >) } |
  s1 |
  \repeat unfold 4 s4\sustainOn|

  %76
  \stemUp < f c' >16( < a d >) q( < f c' >) < ees bes' >( < g c >) q( < ees bes' >) < cis gis' >( < eis ais >) q( < cis gis' >) < b fis' > < dis gis > q( < b fis' >32)\) r32\fermata |
  < ees g >8(-. < f a >-. < des f >-. < e g >)-. < b dis >(-. < cis eis >-. < a cis >-. < b dis >16.)-. r32\fermata |
  \override TextSpanner.bound-details.left.text = "rall."
  s2.\startTextSpan s8 s16. s32\stopTextSpan |
  s2 s4\sustainOn s8\sustainOn s16. s32\sustainOff |
  
  \pBreak

  %77
  \tempo "Lento"
  << 
    { cis'8([ dis] b fis'16-> d) cis8([ dis] b fis'16 d) } \\
    { \diveight \repeat unfold 2 { < cis, fis >16 < dis gis > gis < cis, fis > < b e > < cis fis > < fis cis' > a } }
  >> |
  \clef bass \repeat unfold 2 { < b,, fis' a >8[ < e b' dis >] < a, e' gis > < d a' cis > } |
  s1^\markup{\italic "espressivo molto"} |
  \repeat unfold 4 { s8\sustainOn } s8\sustainOff\sustainOn \repeat unfold 3 { s8\sustainOn } |

  %78
  <<
    { cis8 dis b cis a b < ais, e' gis >4\fermata } \\
    { < cis fis >16 < dis gis > gis < cis, fis > < b e > < cis fis > fis < b, e > < a d > < b e > e c( \once \override NoteColumn.force-hshift = #1.7 bis4)~ }
  >> |
  < b fis' a >8[ < e b' dis >] < a, e' gis > < d a' cis > < g, d' f > < c g' b > \stemUp < fis, cis' >4\fermata |
  s1 |
  s8\sustainOff\sustainOn \repeat unfold 5 { s8\sustainOn } s4\sustainOff\sustainOn |

  %79
  \override Score.TimeSignature.transparent = ##t
  \time 19/16
  <<
    { \omit TupletNumber \omit TupletBracket \stemDown s1 \tuplet 15/6 { \once \override Rest.Y-offset = 0 r32^\markup{\italic "rapido"} < a b >([ e' fis a b < a b > e' fis a b < a b > e' fis a)] } } \\
    { bis,,,1( s16 \toLowerStem \once \hideNotes c8)  }
  >> |
  r1 \divfour < b, b' >16 \clef treble cis'' cis' |
  s1 s8. |
  s1\sustainOff s8.\sustainOn |

  \mBreak

  %80 we ball
  \time 4/4
  \stemDown \divsixteen \repeat unfold 4 { \tuplet 12/8 { < a''' b >32( < e fis > < a, b > q < e fis > < a, b > q < e' fis > < a b > q < e' fis > < a b >) } } |
  \stemDown < cis cis' >8-.( < dis dis' >-. < cis cis' >-. < fis fis' >16-. < dis dis' >-. < cis cis' >8-.[ < gis gis' >-.)] q(^\> < fis fis' >)\! |
  s1\p |
  s2 s2\sustainOn |

  \mBreak

  %81
  \stemDown \divsixteen \repeat unfold 4 { \tuplet 12/8 { < a b >32( < e fis > < a, b > q < e fis > < a, b > q < e' fis > < a b > q < e' fis > < a b >) } } |
  \stemNeutral < cis cis' >8-.( < dis dis' >-. < cis cis' >-. < fis fis' >16-. < dis dis' >-. < cis cis' >8-.[ < gis gis' >-.)] q(_\> < fis fis' >)\! |
  s1 |
  \repeat unfold 4 { s4\sustainOn } |

  \mBreak

  %82 top staff is outsourced
  \diveight \stemUp e,,8^(^\markup{\italic "marcato un poco"} fis16 e cis4) e8^( fis16 e cis[ b cis8)] |
  \clef bass << 
    { < gis a cis >4 < fis b > < gis a cis > < fis b > } \\
    { < a, e' >4~ q8 q~ q4~ q8. q16~ }
  >> |
  s1^\markup{\italic "l.h."} |
  s4\sustainOn s8\sustainOn s8 s4\sustainOn s8.\sustainOn s16 |

  \pBreak

  %83 top staff is outsourced
  e8^( fis e cis) b4^( cis) |
  <<
    { < gis' a cis >4 < fis a > \stemDown < gis, e' a > < fis e' a > } \\
    { < a e' >2 s2 }
  >> |
  s1 |
  \repeat unfold 4 { s4\sustainOn } |

  \mBreak

  %84
  \divsixteen \stemDown b''64( gis e cis b gis e cis b cis e gis b cis e gis
  b gis e cis b gis e cis b cis e gis b cis e gis
  b gis e cis b gis e cis b cis e gis b cis e gis
  b gis e cis b gis e cis b cis e gis b cis e gis |
  <<
    { \voiceOne \clef bass \once\hideNotes\grace cis64 \once\override Staff.Clef.X-extent = #'(1 . 2)
      \clef treble  < cis' cis' >8_!_( < dis dis' >_! < gis, gis' >_! b'_!
                    < cis, cis' >8_! < dis dis' >_! < gis, gis' >_! b'_! }
    \new Voice { \voiceTwo 
      \stemUp \bar "" \slashedGrace { < e,,,\=1( b'^\=2( >8\sustainOn_\markup \lower #4.5 { \italic "al Fine"} } \bar "|" \clef treble \once \override NoteColumn.force-hshift = #-2 < cis''\=1) gis'\=2) >1
    }
  >> |
  s1 |
  s1 |

  \mBreak

  %85
  \divsixteen \stemDown b64 gis e cis b gis e cis b cis e gis b cis e gis
  b gis e cis b gis e cis b cis e gis b cis e gis
  b gis e cis b gis e cis b cis e gis b cis e gis
  b gis e cis b gis e cis b cis e gis b cis e gis |
  \voiceOne < cis cis' >8_! < dis dis' >_! < gis, gis' >_! b'_!
            < cis, cis' >8_! < dis dis' >_! < gis, gis' >_! b'_! |
  s1 |
  s1 |

  \override Score.TimeSignature.transparent = ##f
  \mBreak

  %86
  \time 2/4
  \set subdivideBeams = ##f
  \stemDown b64[ gis e cis b gis e cis \toLowerStem b, cis e gis \toUpperStem b cis e gis^\markup{\italic "senza rallentare"} \toLowerStem \clef treble b, cis e gis \toUpperStem b cis e gis \toLowerStem b, cis e gis \toUpperStem \ottava 1 e' gis b cis] |
  \clef bass
  \once \override NoteHead.duration-log = #0
  \once \override Stem.transparent = ##t
  < e,,, b' >2) |
  \once \override DynamicText.X-offset = -3 s2\pp |
  s2 |

  %87
  \time 4/4
  < dis, gis dis' >8) \ottava 0 r8 r4 r2 \fine |
  \voiceOne \clef bass < e b' >8 \oneVoice r8 r4 r2 \fine |
  s1 \fine |
  s2 s4 s8 s8\sustainOff \fine |

}

pianoUpperTwo = {

  s1 %1 
  s2 %2
  s1*5 %3-7
  s2 %8
  s1*3 %9-11
  s4 %12
  s1*4 %13-16
  s2 %17
  s1*31 %18-48
  s2 %49
  s1*4 %50-53
  s2 %54
  s2. %55
  s1 %56
  s2 %57
  s2 %58
  s2. %59
  s1*3 %60-62
  s2 %63
  s1*3 %64-66
  s2 %67
  s1*4 %68-71
  s1*3 %72-74, rush
  s1*4 %75-78
  s1*19/16 %79
  s1*2 %80-81

  %82
  \divsixteen
  \voiceOne \stemDown a'''64( fis e cis a fis e cis a cis e fis a cis e fis
  a fis e cis a fis e cis a cis e fis a cis e fis
  a fis e cis a fis e cis a cis e fis a cis e fis
  a fis e cis a fis e cis a cis e fis a cis e fis)
  |

  %83
  \divsixteen
  <<
    { 
      \voiceOne \stemUp 
      \vshape #'((0 . 0) (0 . 0) (0 . 0) (20 . 0)) Slur
      a4->( fis-> e-> b->)
    }
    \new Voice { \voiceTwo
      \omit TupletBracket
      \divfour
      \tuplet 15/8 { a'32 fis e cis a fis e cis a cis e fis a cis e }
      \omit TupletNumber
      \tuplet 15/8 { fis32 e cis a fis e cis a fis a cis e fis a cis }
      \tuplet 15/8 { e32 cis a fis e cis a fis e fis a cis e fis a }
      \divsixteen
      b64 a fis e cis a fis e cis e fis a cis e fis a
    }
  >> \oneVoice |

}