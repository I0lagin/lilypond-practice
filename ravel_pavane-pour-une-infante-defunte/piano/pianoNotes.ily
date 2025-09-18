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
  s1 s1 s1 s1 s1 |

  %%8%9%10%11%12
  <<
    {
      \tag #'layout { \bar "" \grace { < b c >32 e g b_( e } \bar "|" b2)^~^( b8 a d b }
      \tag #'midi {\grace { < b, c >32 e g b->_( e } s2 s8 a, d b }
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
      \tag #'layout { d4^( e^~ e8 < g, b d > < g b e > < g b fis' > b4 a fis2) }
      \tag #'midi { d'4^( e^~ e8 < g, b d > < g b e > < g b fis' > b4 a fis2\rest) }
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
  < a e' >4_- < d a' >^- |
  s4 s2.\sustainTap
  s4\sustainTap s4.\sustainTap \repeat unfold 3 s8\sustainTap
  s4\sustainTap s4\sustainTap |
  s1 s1 s2 |

  %%20%21%22%23
  <<
    {
      fis''4^( g^~ g8 < b, d fis > < b d g > < b d a' >
      d4 cis)^~ cis2
      d4^( e^~ e8 < g, b d > < g b e > < g b fis' >
      b4 a \tag #'layout fis2) \tag #'midi r2) } \\
    {
      < a b d >8_._( q_. < g b d >_. q_. q_.) a[_( g fis]
      < e g b >8_.)_( q_. q_. q_. q_.) e[_( b e]
      < fis g b >)_._( q_. < e g b >_. q_. q_.) fis[_( e d]
      < cis e g >_.)_( q_. q_. q_.) < cis d fis >_._( q_. q_. q_.) } \\
    {
      s1
      s2 s8 < g' b > q q
      s1*2 }
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
      < g b cis e >4_( < fis a d >8)\) b'8\rest < gis, d' fis >4^>\( < fis_~ c'^~ e^~ >^>
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
   s4\sustainOn s8. \repeat unfold 3 s2\sustainTap s16\sustainTap |
   s1 s1 |
   
   %%30%31%32%33%34
   <<
     {
       b'2^~^( b8 c a < g, g' >
       < fis fis' >4 < g g' >8 < a a'^~ > a' b g fis
       < e, e' >4 < fis fis' >8 < g g'^~ > g' a fis e
       fis2) s8 < c, e a >^-^([ < b d fis >^- < fis c' e >^-
       < b d fis >8^-^)] r \stemDown < b' b' >2 q4
     } \\
     {
       < b c >8 e q e q e < g, a > e'
       \tag #'layout { fis,8 < b d > g d' < fis, b > d' g, d' }
       \tag #'midi { s8 < b d > s8 d < fis, b > d' g, d'  }
       \once \override Beam.positions = #'(-4.5 . -4.5)     
       b8[ c c,\rest c'] < e, a > c' fis, c'
       < fis, b >8 d' < d, b' > d' < e, a c >^> s4.
     }
   >> |
   <<
     {
       s4 \clef treble < e' c' > s4 \clef treble q
       s4 \clef treble < d fis b > s4 \clef treble q
       s4 \clef treble < c e a >\arpeggio s4 \clef treble q\arpeggio
       s4 \clef bass < b fis' > r2
       s1
     } \\
     {
       \tag #'layout {
 	 \clef bass < c, g' e' >4^>\arpeggio s4 \clef bass < a e' c' >^>\arpeggio s4
	 \clef bass < b fis' d' >4^>\arpeggio s4 \clef bass < g d' b' >^>\arpeggio s4
	 \clef bass < a e' c' >4^>\arpeggio s4 \clef bass < fis c' a' >_>\arpeggio s4
	 \clef bass < b fis' d' >4^>\arpeggio r4 fis_-_( b8_- d_-
	 b2_-_)^~ < b, b' > }
       \tag #'midi {
	 e''4 r8. \clef bass a,,32 e' c'4
	 r8. \clef bass b,32 fis' d'4 r8. \clef bass g,,32 d' b'4
	 r8. \clef bass a,32 e' c'4 r8. \clef bass fis,,32 c' a'4
	 r8. \clef bass b,32 fis' d'4 r4 \clef bass fis,,_-_( b8_- d8_-
	 b2_-)^~ < b, b' > }
     }
   >> |
   s4 s8. \repeat unfold 5 s2\sustainTap s16\sustainTap
   s2 s4\sustainTap s8\sustainTap s8\sustainTap 
   s1\sustainTap
   |
   s1 s1 s1 s1 s1 |

   %%35%36%37%38
   <<
     {
       \bar "" \grace { \once \omit TupletNumber \tuplet 7/8 {
	 \shape #'((0 . 0) (0 . 2) (-2 . 2) (0 . -1)) PhrasingSlur
	 \toLower b32^\( \toUpper c e b' c e b'^( 
       } } \bar "|"
       \tag #'layout { \stemUp < b,_~ b'^~ >2)\)^( q8 < a a' > < d d' > < b b' > }
       \tag #'midi { \stemUp b2_~)\)^( b8 < a a' > < d d' > < b b' > }
       < b b' >4^- < a a' >^- < g g' >^- < a a' >^-
       < e_~ e'^~ >2^- q8 < d d' >^_ < g g' >^_ < fis fis' >^_
       < e e' >4^_) b'^> < gis, d' d' >^> \tuplet 3/2 { c'8^> b^> a^> }
     } \\
     { 
       r8 < c e >8^.^([ \toLower < c, e >_. \toUpper < c' e >^.)] s8 < e g >[ g,\rest < c e >]
       s4. < c e >4 q < c_~ e^~ >8[ 
       q8] < b e >4 q c < c d >8[
       < b e >8] \toLower \once \override Beam.positions = #'(4 . 5) b,_-[ \toUpper d_- e_- fis8_-] s8 < fis, c' e >4
     } \\
     {
       \voiceFour
       s1 
       r8 < fis c' e >_~ q4 s2
     } \\
   >> |
    \mergeDifferentlyHeadedOn
   <<
     { 
       s2 s8 < e'' g >[ r q]
       b4 fis b a
       g2 < e, e' >8__ < d d' >__ < g g' >__ < fis fis' >__
       < e e' >4__ \oneVoice r4 \stemDown < e b' > < d a' >
     } \\			
       {			
       \tag #'layout { \bar "" \shape #'((1 . 0) (0 . 0) (0 . 0) (0 . 0)) Slur \grace { b''4_>^( } \bar "|" }
       \tag #'layout { < a, e' b' >2_-) b'8 a d b }
       \tag #'midi { < a, e' >2_-) b'8 a d b } 
       s4. < c e >4 q < c_~ e^~ >8[
       q8] < b e >4 q c, \once \override Beam.positions = #'(-5 . -4.5) < c d >8[ < b e >8] s8 s2.
     } \\
     {
       \voiceFour
       s1
       s8 < d, a' >_~ q4 s2
     } 
   >> |
    s1\sustainTap s1\sustainTap
    s2\sustainTap s8 \repeat unfold 3 s8\sustainTap
    s4\sustainTap s8\sustainTap s8\sustainTap s4\sustainTap s8.\sustainTap s16\sustainTap |
   s1 s1 s1 s1 |

    %%39%40%41%42
    <<
      {
	\omit TupletBracket
	s2. s8 g''^([ bes8 c d f]^~ f4 e8[ d e8 c d)] \oneVoice \stemUp r8 < a,, c f >^.^( < c f a >^. < a c f >^. < f a d >^.
	\tuplet 3/2 { < a c f >8^. < c f a >^. < f a d >^.) } < f_~ a^~ e'^~ >4^> q8 < a, c f >^_[ < c f a >^_ < f a d >^_]
      } \\
      { s2. s8 g'_-_~[ g8_-] < g bes >4_- q_- q_- q8_~[ q8] q[ < f a >] } \\
	{ fis,2^> e4^> d^> } \\
	{ < b_~ b'^~ >2 q }
      >>
     |
     <<
       { < fis b fis' >2 < e e' >4^> < d d' >^> } \\
       { \voiceThree \tag #'layout
	 {
	   \shape #'((0 . 0) (0 . 0) (-1.7 . 0) (-1.7 . 0)) Tie
	   \shiftOff \hideNotes b'2^~ b \unHideNotes } } \\
       { \voiceTwo
	 \tag #'layout
	 {
	   \bar "" \slashedGrace { < g,_~ g'^~ >8 } \bar "|"
	   %% can't figure out how to \vshape these ties to resolve collisions. it works for several trees for Slur...
	   < g_~ g'_~ >2 < g g' b > }
	 \tag #'midi { \slashedGrace { < g_~ g'^~ >8 } < g_~ g'_~ >2 q } } >>
     \clef treble
     <<
       {
	 \stemDown b'''\rest d4^_^( d^_
	 \stemUp \tuplet 3/2 { c8 g c } \clef bass d,4)^~ d8 s8 s4
	 s4 < d, b' >4^>^~ q8 r8 s4 } \\
       {
	 s1
	 s4 r8 g4_- < g d' >4_- q8_-^([ q)] < g c >8 r8 g,_~ g4 < g' d' >8^_ < g c >^_ } >>
     |
     s1 s1 s1 s1
     |
     s1 s1 s1 s1
     |

     %%43%44%45
     <<
       {
	 s2. s8 c'8([ ees f g bes]^~ bes4 a8[ g a f g)]
	 \oneVoice r8 < d, f bes >__ < f a d >__ < d f bes >__ < bes d g >__ } \\
       {
	 s2. s8 c'8_~[ c] ees4_-_( < c ees >_- q_- q8_-_~[ q8] q[ < bes d >]) } \\
       {
	 < f_~ a^~ e'^~ >4 q8 \noBeam q^( \stemDown c'2) \stemUp } \\
       {
       s2 s8 < f, g > \toLower \clef treble < f' g > \toUpper < e, g > } >>
     |
     <<
       {
	 \omit TupletBracket
	 < d b' >4^~ q8 \noBeam \stemDown < g b >^~ < c, g' >4 s4
	 ees'8([ d' c bes g bes a g \clef bass \tuplet 3/2 { f8 c f] } \stemUp g,4) bes8_._- d_._- bes_._- g_._- } \\
       {
	 r8 g,_~ g s8 s2
	 s1
	 s4 r8 < c, g' >___~ q4. q8} >>
     |
     s1 s1 s1 |
     s1 s1 s1 |
     
     
   }