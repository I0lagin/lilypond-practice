\version "2.24.4"

%% \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 0)) Slur

mg = \markup \italic "m.g."

\parallelMusic pianoUpper,pianoLower,pianoPedal,pianoDynamics {
  
  %%1%2
  \key g \major
  <<
    {
      g'2^(^~ g8 a fis e
      d4 e8 fis fis e e4)
    } \\
    {
      \tag #'layout {
	b8_. d_. b_. d_. b_. e_. b_. e_.
	fis,_. b_. fis_. b_. g_. b_. g b
      }
      \tag #'midi {
	b8_. d_. b_. d_. b_. e_. b_. s8
	fis_. b_. fis_. b_. g_. b_. g b
      }
    }
  >> |
  \clef bass
  \key g \major
  r4 g,8_.[_( r c,_. r e'_.] r
  d,8__[ r b'__ r e, r d']) r
  |
  s2\sustainOn s2\sustainTap \repeat unfold 4 s4\sustainTap |
  s1 s1 |

  %%3%4%5%6%7
  <<
    {
      b'2~^( b8 c a g
      fis4)^( g8 a^~ a b g fis
      e4 fis8 g^~ g a fis e
      fis2) r8 < c e a >^-^([ < b d fis >^- < fis c' e >^- fis'^-)] r8 b2 b4
    } \\
    {
      c,8 e c e c e c e
      c d c d b d b d
      b c b c a c a c
      fis, b d b r s4.
      b8 d r4 r2
    }
  >> |
  r4
  \shape #'(
    ((0 . 1.5) (0 . 2) (0 . 2) (0 . 2))
    ((0 . 0) (0 . 0) (0 . 0) (0 . -1))
  ) Slur
  g8^_[^( r a,^_ r g'^_ r d^_ r c'^. r g,^. r fis'^.] r
  c8^.[ r b'^. r fis,^. r e'^. r b^.]) r8 r4 fis4^( g8 a
  d2)^~ < b, d' >
  |
  \repeat unfold 4 s4\sustainTap
  \repeat unfold 2 { s2\sustainTap s4\sustainTap s4\sustainTap }
  s2\sustainTap s4\sustainTap s8\sustainTap s8\sustainTap
  s1\sustainTap
  |
  s1 s1 s1 s2. s4 s1 |

  %%8%9%10%11%12
  <<
    {
      \tag #'layout { \bar "" \grace { < b c >32 e g b_~_( e } \bar "|" b2)^~^( b8 a d b }
      \tag #'midi {\grace { < b, c >32 e g b->_~_( e } s2 s8 a, d b }
      b4^- a^- g^- a^-
      e2)^( r8) < c' d >8^.^([ r q^. < b e >^.)] s8 b4^-^( \crossStaff { < d, fis >^- <  e >^- < b fis' >2^-) }
    } \\
    {
      r8 e_. g_. e_. c_. e g e
      \tag #'layout { c < fis, e' > a' e c e a e }
      \tag #'midi { c < fis, e' > s8 e' c e s8 e }
      r8 b_. e_. b'_. e,_-_( d__ g fis__
      e__) r8 s4 s4 \tuplet 3/2 { \once \override NoteColumn.force-hshift = #1.2 c8_- b_- a_- }
      s2
    }
  >> r2 |
  <<
    {
      \stemDown r4 b''4^>^~^( b8 a d b
      \stemUp b4 fis b a
      g4) r4 s2
      s8 b^-[ \toUpper d_- e_-] \toLower \crossStaff { gis,4 fis }
      \crossStaff fis2 \stemUp < fis b >8^.^([ < b d >^. \toUpper < d fis >^. < fis b >^.])
    } \\
    {
      a,,,1
      r8 < d a' >8_~ q4_~ q2
      r2 < e e' >8___( < d d' >__ < g g' >__ < fis fis' >__
      < e e' >4^_) r4 < e b' >__ < d a' >__
      < b fis' d' >2__ r2
    }
  >> |
  s1 s1\sustainTap
  s2\sustainTap s8 s8\sustainTap s8\sustainTap s8\sustainTap
  \repeat unfold 4 s4\sustainTap
  s2 s2\sustainTap |
  s1 s1 s1 s1 s1 |

  %%13%14%15%16
  <<
    {
      fis''4 g^~ g8 < b, d fis > < b d g > < b d a' >
      d4 cis^~ cis2
      d4^( e^~ e8 < g, b d > < g b e > < g b fis' >
      b4 a fis2)
    } \\
    {
      < a b d >8_._( q_. < g b d >_. q_. q_.) a_\mg[_( g fis]
      < e g b >8_.)_( q_. q_. q_. q_.) e_\mg[_( b e]
      < fis g b >8)_._( q_. < e g b >_. q_. q_.) fis[_( e d])
      < cis e g >8_. q_. q_. q_. < cis d fis >_._( q_. q_. q_.)
    } \\
    {
      s1
      s2 s8 < g' b >8 q q
      s1
      s1
    }
  >> |
  < b b' >2__ q__
  < b b' >1__
  < b b' >2__ q__
  < b b' >1__
  |
  s4\sustainTap s4\sustainTap s2\sustainTap
  s1\sustainTap
  s4\sustainTap s4\sustainTap s2\sustainTap
  s4\sustainTap s4\sustainTap s2\sustainTap |
  s1 s1 s1 s1 |

  %%17%18%19
  <<
    {
      a4^( b^~ b8 < d, fis a >8 < d fis b > < d fis cis' >
      < g, d' fis >4_- < g b e >4._-) < fis a d >8_-_( < g b e >_- < g d' fis >_-
      < g b e >4_- < fis a d >_-)
    } \\
    {
      < cis' d fis >8_._( q_. < b d fis >_. q_.) q_._( cis_.[ b_. a_.])
      s1
      s2
    }
  >> |
  a2__ a2__
  < e' b' >4_- < a e' >4._- < d a' >8_- < a e' >_- < e b' >_-
  < a e' >4_- < d a' >^-
  |
  s4 s2.\sustainTap
  s4\sustainTap s4.\sustainTap \repeat unfold 3 s8\sustainTap
  s4\sustainTap s4\sustainTap
  |
  s1 s1 s2 |

  %%20%21%22%23
  <<
    {
      fis''4^( g^~ g8 < b, d fis > < b d g > < b d a' >
      d4 cis)^~ cis2
      d4^( e^~ e8 < g, b d > < g b e > < g b fis' >
      b4 a \tag #'layout fis2) \tag #'midi r2)
    } \\
    {
      < a b d >8_._( q_. < g b d >_. q_. q_.) a[_( g fis]
      < e g b >8_.)_( q_. q_. q_. q_.) e[_( b e]
      < fis g b >)_._( q_. < e g b >_. q_. q_.) fis[_( e d]
      < cis e g >_.)_( q_. q_. q_.) < cis d fis >_._( q_. q_. q_.)
    } \\
    {
      s1
      s2 s8 < g' b > q q
      s1*2
    }
  >> |
  < b, b' >1
  < e e' >1
  < a a' >1
  r4 < a, a' >4 < d d' >2 |
  s4\sustainTap s2.\sustainTap
  s4\sustainTap s2.\sustainTap
  s4\sustainTap s2.\sustainTap
  s4\sustainTap s4\sustainTap s2\sustainTap |
  s1 s1 s1 s1 |
  
  %%24%25%26%27
  <<
    {
      a4^( b^~ b8 < d, fis a > < d fis b > < d fis cis' >
      < gis, cis d fis >4_- < g b cis e >4._-) < fis b d >8_-_\( < g b cis e >_- < gis cis d fis >_-
      < g b cis e >4_( < fis a d >8)\) r8 < gis d' fis >4^>\( < fis_~ c'^~ e^~ >^>
      q8 < e bes' d >^> < fis c' e >^> < gis d' fis >^> < bes e >4^( < fis a c d >^\fermata)\)
    } \\
    {
      < cis' d fis >8_._( q_. < b d fis >_. q_. q_.) cis[_( b a]
      \once \hide Rest e1\rest)
      s1
      s2 < f g >8_\( < fis gis >_( \once \hide Rest fis8\rest)\)
    } \\
  >> |
  < g, g' >2. < b b' >4
  < e b' >4 < a e' >4. < d a' >8 < a e' > < e b' >
  < a e' >4^( < d a' >8) r8 < e, b' >4_> < d_~ a'^~ >_>
  q8 < c g' >_> < d a' >_> < e b' >_> < g d' >4_( < d a' >^\fermata) |
  s2.\sustainTap s4\sustainTap
  s4\sustainTap s4.\sustainTap \repeat unfold 3 s8\sustainTap
  \repeat unfold 4 s4\sustainTap
  s8 \repeat unfold 6 s8\sustainTap s8  |
  s1 s1 s1 s1 |

%%% Alright. Arpeggios. Never heard of her.
%%% Reference I'm using plays them equivalent to 32nd notes, so I'll follow that.
%%% However, I can't process that first arpeggio that way; for this, do 64th notes.
  
  %%28%29
  <<
    {
      \tag #'layout { g''2\arpeggio^~^( g8 a fis e }
      \tag #'midi { s16 s64 g64^~^( s32 s8 s4 s8 a fis r8 }
      d4 e8 fis fis e e4)
    } \\
    {
      \tag #'layout { < d, b' >8_.\arpeggio d'_. < d, b' >8_. d'_. \repeat unfold 2 { < e, b' >8_. e'_. } }
      \tag #'midi { s32 s64 d,64 b'64 s32. d8_. < d, b' >8_. d'_. \repeat unfold 2 { < e, b' >8_. e'_. } }
      < b, fis' >[ b' r b] < e, b' > b' e, b'
      }
    >> |
   <<
     {
       s4 < b'' g' > r q
       r4 < b fis' > r < b g' >
     } \\
     {
       \tag #'layout { < g, d' b' >4_>\arpeggio r < c, g' e' >\arpeggio_> r < d b' fis' >4\arpeggio_> r < e b' g' >\arpeggio_> r }
       \tag #'midi {
	 g64 d' b' s64 s8. r8.
	 c,,32 g' e' r r4.
	 d,32 b' fis' r r4.
	 e,32 b' g' r r4. c,32 g'
       }
     }
   >> |
   \repeat unfold 4 s2\sustainOn |
   s1 s1 |
   
 }