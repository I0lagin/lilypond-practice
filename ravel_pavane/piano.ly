\version "2.24.4"

\parallelMusic pianoUpper,pianoLower,pianoDynamics,pianoPedal {

  %1
  \clef treble <<
    {g'2~\( g8 a fis e } \\
    {b8-. d-. b-. d-. b-. e-. b-. e-.}
  >> |
  \clef bass r4 g,8-.[\( r c,-. r e'-.] r |
	s1\p |
	\override SustainPedal.transparent = ##t
	\override PianoPedalBracket.transparent = ##t
	s2\sustainOn s2\sustainOff\sustainOn |

  %2
  <<
    { d4 e8 fis fis e e4\) } \\
    {fis,8-. b-. fis-. b-. g-. b-. g b}
  >> |
  d,-.--[ r b'-.-- r e, r d']\) r |
	s1 |
	s2\sustainOn s2\sustainOff\sustainOn |

  %3
  <<
    { b'2~\( b8 c a g } \\
    { c,8 e c e c e c e }
  >> |
  r4 g8-.--[\( r a,-.-- r g'-.-- r |
	s1 |
	s2\sustainOn s2\sustainOff\sustainOn |

  \mBreak

  %4
  <<
    { fis4\)\( g8 a~ a b g fis } \\
    { c8 d c d b d b d }
  >> |
  d8-.-- r c'-. r g,-. r fis'-.] r |
	s1 |
	s2\sustainOn s2\sustainOff\sustainOn |

  %5
  <<
    { e4 fis8 g~ g a fis e } \\
    { b8 c b c a c a c }
  >> |
  c8-.[ r b'-. r fis,-. r e'-. r |
	s1 |
	s2\sustainOn s2\sustainOff\sustainOn |

  %6
  <<
    { fis2\) r8 <c e a>--[( <b d fis>--^\markup { \italic "cédez" } <fis c' e>-- } \\
    { fis8 b d b r s4. }
  >> |
  b8]-.\) r r4 fis4( g8 a |
	s2. s4\mf |
	s2\sustainOn s2\sustainOff\sustainOn |

  \mBreak

  %7
  <<
    { fis'8--]) r b2 \tag #'layout ^\> b4} \\
    { b,8 d r4 r2 }
  >> |
  d2~) <b, d'> |
	s1 |
	s2\sustainOn s4\sustainOff s4\sustainOn |

  %8
  <<
    { \bar "" \grace{ <b c>32[ e g b_( e] } \bar"|" b2~)\!\( b8 a d b} \\
    { r8 e,-. g-. e-. c-. e g e }
  >> |
  <<
    {r4 \stemDown b''->~\( b8 a c b} \\
    {a,,1}
  >> |
	s1\p |
	s2 s2\sustainOff\sustainOn |

  %9
  <<
    { b'4-- a-- g-- a--} \\
    { c,8 <fis e> a e c e a e }
  >> |
  <<
    { b''4 fis b a } \\
    { r8 <d,, a'>~ q4~ q2}
  >> |
	s1 |
	s2\sustainOn s2\sustainOff\sustainOn |

  \mBreak

  %10
  <<
    { e2\)( r8)^\markup {\italic "un peu retenu"} <c' d>-.([ r <c d>-. } \\
    { r8 b,-. e-. b'-. e,--[_\( d-.-- g fis-.-- }
  >> |
  <<
    { g'4\) r4 s2 } \\
    { r2 <e, e'>8-.--\( <d d'>-.-- <g g'>-.-- <fis fis'>-.--}
  >> |
	s2 s2\pp |
	s2\sustainOn \repeat unfold 4 { s8\sustainOff\sustainOn } |

  %11
  <<
    { <b e>8-.)] r8 b4--\( <d, fis>-- e-- } \\
    {e8-.--]\) \change Staff = "pianoLower" \stemUp b^- \change Staff = "pianoUpper" \stemDown d-- e-- s4 \once \override NoteColumn.force-hshift = 1.5 \tuplet 3/2 { c8-- b-- a-- }  }
  >> |
  <<
    { s2 \crossStaff { gis'4 fis } } \\
    { <e e'>4^.^-\) r4 <e, b'>-- <d a'>-- }
  >> |
	s8 \once \override DynamicText.Y-offset = 3 s8\f s2. |
	s4\sustainOff\sustainOn s4\sustainOff s4\sustainOn s4\sustainOff\sustainOn |

  %12
  <<
    { <b fis'>2--\) r2 } \\
    {s2 \change Staff = "pianoLower" \stemUp <fis b>8^.^\( \once \override DynamicLineSpanner.staff-padding = #6.5 <b d>^. \change Staff = "pianoUpper" \stemDown <d fis>^. <fis b>^.\)}
  >> |
  <<
    { \crossStaff {fis'2} } \\
    { <d fis, b,>2-- r2 }
  >> |
	s2 s8 \once \override DynamicText.Y-offset = 4 s4.\p |
	s2\sustainOff s4.\sustainOn s16 s16\sustainOff |

  \pBreak

  %13
  <<
    { fis'4 g~ g8 <b, d fis> <b d g> <b d a'>  } \\
    { <a b d>8-.([ q-. <g b d>-. q-.] q-.) a_\markup{\italic "m.g."}([ g fis] }
  >> |
  < b, b' >2-.-- q-.-- |
	s1\pp |
	\override SustainPedal.transparent = ##f
	s1\sustainOn |

  %14
  <<
    { d'4 cis~ cis2 } \\
    { < e, g b >8-.)([ q-. q-. q-.] q-.) e_\markup{\italic "m.g."}([ b e] } \\
    { s2 s8 < g b >8 q q }
  >> |
  < b b' >1-.-- |
	s1 |
	s1 
    \tag #'layout \sustainOn
    \tag #'midi \sustainTap
  |

  %15
  <<
    { d'4( e~ e8 < g, b d > <g b e> <g b fis'> } \\
    { < fis g b >8-.)([ q-. < e g b >-. q-.] q-.) fis([ e d)] }
  >> |
  < b b' >2-.-- q-.-- |
	s1 |
	s1 
    \tag #'layout \sustainOn
    \tag #'midi \sustainTap
  |

	\mBreak

  %16
  <<
    { b'4 a fis2) } \\
    { < cis e g >8-. q-. q-. q-. < cis d fis >-.( q-. q-. q-.)  }
  >> |
  < b b' >1-.-- |
	s1 |
  s1 
    \tag #'layout \sustainOn
    \tag #'midi \sustainTap
  |

  %17
  <<
    { a'4\( b~ b8 <d, fis a> <d fis b> <d fis cis'> } \\
    {
			< cis d fis >8-.([ q-. < b d fis >-. q-.])
			\once \override DynamicLineSpanner.outside-staff-priority = ##f
			q-.
			\tag #'layout ^\<
			( cis-.[ b-. a-.]) \!
		}
  >> |
  a2-.-- a-.-- |
	s2 s2\< |
	s1 
    \tag #'layout \sustainOn
    \tag #'midi \sustainTap
  |

  %18
  <<
    { <g d' fis>4 <g b e>4._-\) <fis a d>8_-_( <g b e>_- <g d' fis>}_- \\
    { } %empty
  >> |
  < e' b >4-- <a e'>4.-- < d a' >8-- < a e' >-- < e b' >-- |
	s1\mfTres |
	s1 |

	\mBreak
  \time 2/4
  \bar "||"

  %19
  <<
    { <g b e>4_- <fis a d>_-) } \\
    { } %empty
  >> |
  < a e' >4-- < d a' >-- |
	s2\> |
	s4 s4\sustainOff |


	\time 4/4
	\bar "||"
	
	%20
	<<
    { fis''4( g~ g8 <b, d fis> <b d g> <b d a'>  } \\
    { <a b d>8-.([ q-. <g b d>-. q-.] q-.) a([ g fis] }
  >> |
	< b, b' >1 |
	s1\ppp |
	s1\sustainOn |

	%21
	<<
    { d'4 cis~) cis2 } \\
    { < e, g b >8-.)([
		\tag #'layout ^\>
			 q-. q-. q-.]
		\tag #'layout \!
		q-.) e([ b e] } \\
    { s2 s8 < g b >8 q q }
  >> |
	< e e'>1 |
	s1 |
	\override SustainPedal.transparent = ##t
	s1\sustainOff\sustainOn |

	\mBreak
	
	%22
	<<
    { d'4(
		\tag #'layout ^\<
		e~ e8 < g, b d > < g b e > < g b fis' >
		\tag #'layout \!
		} \\
    { < fis g b >8-.)([ q-. < e g b >-. q-.] q-.) fis([ e d] }
  >> |
	<a a'>1 |
	s1 |
	s1\sustainOff\sustainOn |

	%23
	<<
    { b'4 a fis2) } \\
    { < cis e g >8-. \tag #'layout  ^\> )( q-. q-. q-.) < cis d fis >-.( \tag #'layout \! q-. q-. q-.)  }
  >> |
	r4 <a, a'>4 <d d'>2 |
	s1 |
	s2\sustainOff\sustainOn s2\sustainOff\sustainOn |

	%24
	<<
		{ a'4( \tag #'layout ^\< b~ b8 < d, fis a > < d fis b > < d fis cis' > \tag #'layout \!}\\
		{ < cis d fis >8-.( q-. < b d fis >-. q-. q-.) cis[( b a] }
	>> |
	<g, g'>2. <b b'>4 |
	s1\pp\< |
	s2.\sustainOff\sustainOn s4\sustainOff\sustainOn |

	\mBreak
	
	%25
	<<
		{	< gis cis d fis >4_- < g b cis e >4._-) < fis b d >8_-_\( < g b cis e >_- < gis cis d fis >_- } \\
		{ \stemUp gis4) s2. }
	>> |
	< e b >4 < a e >4. < d a' >8 < a e' > < e b' >|
	s4\! s4\mf s2 |
	s1\sustainOff |

	%26
	<<
		{ < g b cis e >4 \tag #'layout  \> _( < fis a d >8)\) \tag #'layout \! r < gis d' fis >4->\(^\markup{\italic "un peu plus lent."} <fis_~ c'~ e~>-> } \\
		{ s1 }
	>> |
	< a e' >4( < d a' >8) r < e, b' >4-> < d a' >->~ |
	s2. s4\f |
	s1 |

	%27
	<<
		{ <fis c' e>8 < e bes' d >-> < fis c' e >-> < gis d' fis >-> < bes e >4(
			\tag #'layout ^\> 
			< fis a c d >4)\)\fermata
			\tag #'layout \!
			 } \\
		{ s2 < f g >8([ < fis gis >~]
		\tag #'layout \!
		 \stemUp <fis>4) }
	>> |
	< d a' >8 < c g' >-> < d a' >-> < e b' >-> < g d' >4 \tag #'layout \> ( < d a' >)\fermata \tag #'layout \! |
	s1 |
	s1 |

	\bar "||"
	\pBreak
	
	%28
	<<
		{ g''2~(\arpeggio g8 a fis e } \\
		{ < d, b' >8-.\arpeggio d'-. < d, b' >8-. d'-. < e, b' >-. e'-. < e, b' >-. e'-. }
	>> |
	<<
		{ s4 < b'' g' > r < b g' > } \\
		{ < g, d' b' >\arpeggio-> r < c, g' e' >->\arpeggio r }
	>> |
	s1\p |
	s2\sustainOn 
  s2
    \tag #'midi \sustainOff
    \sustainOn |

	%29
	<<
		{ d4 e8 fis fis e e4) } \\
		{ < b, fis' >8[ b' r b] < e, b' > b' e, b' }
	>> |
	<<
		{ r4 < b'' fis' > r < b g' > } \\
		{ < d,, b' fis' >4\arpeggio-> r < e b' g' >4\arpeggio-> }
	>>|
	s1 |
	s2 
    \tag #'layout \sustainOn
    \tag #'midi \sustainTap
	\override SustainPedal.transparent = ##t
	s2\sustainOff\sustainOn |

	%30
	<<
		{ b'2~\( b8 c a < g, g' > } \\
		{ < b c >8 e < b c > e < b c > e < g, a > e' }
	>> |
	< c' g' e' >4->\arpeggio \clef treble < e' c' > \clef bass < a,, e' c' >->\arpeggio \clef treble < e'' c' > |
	s1 |
	s2\sustainOff\sustainOn s2\sustainOff\sustainOn |
	
	\mBreak
	
	%31
	<<
		{ < fis, fis' >4 < g g' >8 <a a'>~ a' b g fis } \\
		{ fis,8 < b d > g d' <fis, b> d' g, d'}
	>> |
	\clef bass <b, fis' d'>4->\arpeggio \clef treble <d' fis b> \clef bass <g,, d' b'>4->\arpeggio \clef treble <d'' fis b> |
	s1 |
	s2\sustainOff\sustainOn s2\sustainOff\sustainOn |

	%32
	<<
		{ <e, e'>4 <fis fis'>8 <g g'>~ g' a fis e } \\
		{ b8[ c r c] <e, a> c' fis, c' }
	>> |
	\clef bass <a, e' c'>4->\arpeggio \clef treble <c' e a>\arpeggio \clef bass <fis,, c' a'>->\arpeggio \clef treble <c'' e a>\arpeggio |
	s1 |
	s2\sustainOff\sustainOn s2\sustainOff\sustainOn |
	
	%33
	<<
		{ fis2\) \stemDown <e, a c>8-> \stemNeutral <c e a>--(^\markup{\italic "cédez"}[ <b d fis>-- <fis c' e>--} \\
		{ <fis' b>8 d' <d, b'> d' s2 }
	>> |
	<<
		{ s4 <b fis'>4 r2 } \\
		{ \clef bass <b, fis' d'>4^>\arpeggio r fis--( b8-- d--}
	>> |
	s2 s8 s4.\mf |
	s2\sustainOff\sustainOn s2\sustainOff |
	
	\mBreak
	
	%34
	<<
		{ < b, d fis >8--)] r \stemDown <b' b'>2 \tag #'layout ^\> q4 } \\
		{  }
	>> |
	<<
		{ s1 } \\
		{ \stemDown b2--^~) <b, b'>} 
	>> |
	s1 |
	s2\sustainOn s4..\sustainOff s16\sustainOn |
	
	%35
	<<
		{ \bar "" \grace { \change Staff = "pianoLower" \stemUp b,32( \change Staff = "pianoUpper" \stemDown c e^\markup{ \center-align \italic "rapide"} b' c e b'\!~ } \bar"|" \stemUp <b~ b,_~>2)\( q8 <a a,> <d d,> <b b,> } \\
		{ r8 \stemDown <c, e>^.^( \change Staff = "pianoLower" \stemUp <c, e>-. \change Staff = "pianoUpper" \stemDown <c' e>^.) s \stemNeutral <e g>[ \once \override Rest.extra-offset = #'(0 . 1) r <c e>] }
	>> |
	<<
		{ s2 s8 <e'' g>[ r <e g>] } \\
		{ \grace {\stemDown \scaleDurations #'(7 . 8) b4_>^~} \bar"|" <a, e' b'>2 b'8 a d b }
	>> |
	s1\p |
	s2\sustainOn s2\sustainOff\sustainOn |
	
	%36
	<<
		{ <b b'>4-- <a a'>-- <g g'>-- <a a'>-- } \\
		{ r8 <fis,~ c'~ e~>8 q4 } \\
		{ \stemDown s4. <c'' e>4 q <c_~ e~>8[ }
	>> |
	<<
		{ b4 fis b a } \\
		{ s8 <d,,~ a'~> q4} \\
		{ \stemDown s4. <c'' e>4 q <c_~ e~>8[ } \\
	>> |
	s1 |
	s4\sustainOff\sustainOn s4\sustainOff\sustainOn s4\sustainOff\sustainOn s4\sustainOff\sustainOn |
	
	\mBreak
	
	%37
	<<
		{ <e,_~ e'~>2-- q8^\markup{\italic "un peu retenu"} <d d'>---. <g g'>---. <fis fis'>---. } \\
		{ s8 <b e>4 q c4 <c d>8[ } \\
		{ \stemDown <c e>8] }
	>> |
	<<
		{ g2 <e, e'>8_-_. <d d'>_-_. <g g'>_-_. <fis fis'>_-_.} \\
		{ s8 <b' e>4 q c,4 <c d>8[ } \\
		{ \stemDown <c' e>8] }
	>> |
	s2 s2\pp |
	s8\sustainOff s4\sustainOn s8\sustainOff s8\sustainOn s8\sustainOff\sustainOn s8\sustainOff\sustainOn s8\sustainOff\sustainOn |
	
	%38
	<<
		{ <e, e'>4---.\) b'-> <gis, d' d'>-> \tuplet 3/2 { c'8-> b-> a-> } } \\
		{ <b e>8] \change Staff = "pianoLower" \stemUp b,--[ \change Staff = "pianoUpper" \stemDown d-- e-- fis--] s <fis, c' e>4 }
	>> |
	<<
		{ <e,, e'>4__-. r \stemDown <e b'> <d a'> } \\
		{ <b' e>8] }
	>> |
	% slur from m35
	s8 s8\ff s2. |
	s8\sustainOff\sustainOn s8\sustainOff s2. |
	
	%39
	<<
		{ s2. s8 g''8[( } \\
		{ s2. s8 g8~--[ } \\
		{ fis,2-> e4-> d->_\markup{\whiteout \pad-markup #0.1	 \italic "subitement très doux et très lié."} } \\
		{ <b~ b'^~>2 q }
	>> |
	<<
		{ <fis fis'>2 <e e'>4-> <d d'>-> } \\
		{ \bar "" \slashedGrace { <g,~ g'^~>8 } \bar "|" \stemDown <g g'>2~-- <g g'> } \\
		{ \stemUp \once \override NoteColumn.force-hshift = 0.4 b'2~ \stemDown \once \override NoteColumn.force-hshift = -0.2 b }
	>> |
	s1 |
	s1 |
	
	\bar "||"
	
	%40
	<<
		{ bes''8 \tag #'layout ^\< c d f\!]~ f4 \tag #'layout ^\> e8[ d } \\
		{ g,8--] <g bes>4-- q-- q-- <g_~ bes^~>8[ }
	>> |
	<< 
		{ \clef treble r2 \stemDown d''4---.( d---. } \\
		{ }
	>> |
	s1 |
	s1\sustainOn |
	
	\mBreak
	
	%41
	<<
		{ e'8 c d\!]) r < a,, c f >-.( < c f a >-. < a c f >-. < f a d >-.} \\
		{ <g'' bes>8] <g bes> <f a> s8 s2 }
	>> |
	<<
		{ \tuplet 3/2 { c8 g c } \clef bass d,4~) d8 s4 \stemDown <g, d'~>8_-[ } \\
		{ s4 r8 g4-- <g d'>-- }
	>> |
	s1 |
	s4\sustainOff\sustainOn s4.\sustainOff\sustainOn s4\sustainOff\sustainOn s8\sustainOff\sustainOn |
	
	%42
	<<
		{ \once \override TupletNumber.extra-offset = #'(0 . 0.2) \tuplet 3/2 { < a,, c f >8-. \tag #'layout ^\< < c f a >-. < f a d >-.)\! }  < f_~ a~ e'~ >4-> q8 < a, c f >---.[ < c f a >---. < f a d >---.] } \\
		{ }
	>> |
	<< 
		{ \stemDown <g d'>8] < g c > \stemUp < d b' >4->~ q8 r \stemNeutral <g d'>---. <g c>---.} \\
		{ s4 r8 g,~ g4 s4 }
	>> |
	s2 s8 s4\< s8\! |
	s4\sustainOff\sustainOn
	\override SustainPedal.transparent = ##f
	s4.
    \tag #'layout \sustainOn
    \tag #'midi \sustainTap
	\override SustainPedal.transparent = ##t
	s4.\sustainOff\sustainOn |
	
	%43
	<<
		{ s2 s4 s8 c'[( \tag #'layout ^\< } \\
		{ s2 s4 s8 c[( } \\
		{ < f,_~ a~ e'~ >4_> q8\noBeam q( c'2) } \\
		{ s2 s8 < f, g > \change Staff = "pianoLower" \clef treble \stemUp < f' g >_. \change Staff = "pianoUpper" \stemDown <e, g >
		\tag #'layout \pp
		}
	>> |
	<< 
		{ < d' b' >4~ q8\noBeam \stemDown < g b >( < c, g' >4) s4 } \\
		{ r8 g_~ g s8 s2 } 
	>> |
	s4. s8\> s2\! |
	s4.\sustainOff\sustainOn s8\sustainOff s4\sustainOn s4\sustainOff |
	
	\pBreak
	
	%44
	<<
		{ ees'8 f g bes~]\! bes4 \tag #'layout ^\> a8[ g } \\
		{ c,]) ees4--( <c ees>-- <c ees>-- q8[--~ }
	>> |
	<< 
		{ \stemDown ees''8([ d' c bes g bes a g } \\
		{ }
	>> |
	s1 |
	s1 |
	
	%45
	<<
		{ a'8 f g])\! r8 < d, f bes >8_-_. < f a d >_-_. < d f bes >_-_. < bes d g >_-_. } \\
		{ < c' ees >8] < c ees > < bes d >) s8 s2 }
	>> |
	\clef bass <<
		{ \stemDown \tuplet 3/2 { f8 c f] } g,4) \stemUp bes8_-_. d_-_. bes_-_. g_-_. } \\
		{ s4 r8 < c,, g' >8_-_.~ q4. q8~ }
	>>|
	s1 |
	\override SustainPedal.transparent = ##f
	s4. s8\sustainOn s2 |
	
	%46
	<<
		{ \tuplet 3/2 { < d, f bes >8_-_. \tag #'layout ^\< < f a d >_-_. < a d f >_-_.\! } \stemDown < bes_~ d~ a'~ >4-^ q8 \stemNeutral < bes, d f bes >8-> \tag #'layout _\<[ < d f a d >-> < f a d f >->]  } \\
		{  }
	>> |
	<< 
		{ \tuplet 3/2 { bes''8 d < bes f' > } < g e' >4-^~ q8\noBeam \stemDown < d g >-> < f bes >-> < a bes d >-> } \\
		{ <c,, g'>4 r8 <c g'>8~-.-- q2  }
	>> |
	s4 s4\f s8 s4.\ff |
	\override SustainPedal.transparent = ##t
	s4\sustainOff\sustainOn s8\sustainOff s8 s2 |
	
	\mBreak
	
	%47
	<<
		{ \stemDown < a bes d a' >4~\! q8\noBeam \stemUp < a e' a >( < f c' f >4) \tag #'layout ^\> r8 < ees b' ees > } \\
		{ s4. c'8[ bes a aes g  }
	>> |
	<<
		{ < g'' bes e >4-^~ q8 \noBeam c[ bes a aes g } \\
		{ r8 < c,, g' >4_-_. < bes'' e >8( < f c' >4) s8 < f b >8( }
	>> |
	s1\sf |
	s1 |
	
	%48
	<<
		{ < c, g' c >4 r8 < bes fis' bes >8( g'4\!) e--} \\
		{ f8 e ees d] < c d >2\p }
	>> |
	<<
		{ f8 e ees d] \crossStaff { g4 e } } \\
		{ < c g' >4) s8 < c fis >8( < d, d' >2)_-~ }
	>> |
	s1 |
	s1 |
	
	\time 2/4
	\bar "||"
	
	%49
	<<
		{ s4. g''8[( } \\
		{ s4. g8[(_- } \\
		{ < c,, d fis >4^- < bes d g >^- }
	>> |
	<<
		{ \crossStaff { fis'4 g } } \\
		{ < d, d' >4 <g, g'>4 }
	>> |
	s2 |
	s2 |

	\time 4/4
	\bar "||"
	
	%50
	<<
		{ bes''8_\pp c d f]~ f4 \tag #'layout ^\> e8[ d } \\
		{ g,8]) < g bes >4-- q-- \grace { \change Staff = "pianoLower" \stemUp d32^( \change Staff = "pianoUpper" \stemDown g bes f' } < g, bes >4) q8_~[  }
	>> |
	r4 r4
	<<
		{ \stemDown \clef treble d''''_( d } \\
		{ \stemUp  s8 g'8[ \once \override Rest.extra-offset = #'(0 . 8) r < f g >] }
	>>|
	s1 |
	s1 |

	\mBreak
	
	%51
	<<
		{ e'8 c d]) \tag #'layout \! r < a,, c f >_.( < c f a >_. < a c f >_. < f a d >_. } \\
		{ <g'' bes>8] q s \grace { \change Staff = "pianoLower" \stemUp d,32^( a' d \change Staff = "pianoUpper" \stemDown f a d a'8) } s2 }
	>> |
	<<
		{ \tuplet 3/2 { c,8 g c } \stemDown d,) \clef bass < g, d' >4-- q4-- q8(\([ } \\
		{ } 
	>> |
	s1 |
	s4\sustainOn s8\sustainOff\sustainOn s8\sustainOn s2  |
	
	%52
	<<
		{ \tuplet 3/2 { < a,,, c f >8_. \tag #'layout _\< < c f a >_. < f a d >_.\! } \stemDown < f_~ a~ e'~ >4) q8 \noBeam } \\
		{ } \\
		{ s2 s8 \stemUp < a, c f >_-_.( < c f a >_-_. < f a d >_-_. }
	>> |
	<<
		{ \stemDown < g^- d' >8)] < g c >8 \stemUp < d~ b'~ >4^>\) q8 r \stemDown < g d' >8^-^. < g c >^-^. } \\
		{ s4 r8 g,8~_-_. g4 s4 } 
	>> |
	s1 |
	s2\sustainOff\sustainOn s8\sustainOff s4. |
	
	%53
	<<
		{ s2. s8 c'[( } \\
		{ s2. s8 c_([ } \\
		{ \stemDown < f,_~ a~ e'~ >4^>) q8 \noBeam q \tag #'layout _\> ^( c'2)\! }
		{ s2 s8 < f, g >^.^( \change Staff = "pianoLower" \clef treble \once \stemUp < f' g >_. \change Staff = "pianoUpper" < e, g >^.) }
	>> |
	<<
		{ < d' b' >4^>^~ q8 \noBeam \stemDown < g b >( < c, g' >4) s4 } \\
		{ r8 g_-_._~ g s8 s2}
	>> |
	s1 |
	s2 s4\sustainOn s4\sustainOff\sustainOn |
	
	\mBreak
	
	%54
	<<
		{ ees'8_\p f g bes]~ bes4 a8[ g } \\
		{ c,8]) ees4 < c ees > \appoggiatura { \change Staff = "pianoLower" \stemUp g16^( bes \change Staff = "pianoUpper" \stemDown c ees bes' } < c, ees >4) < c ees >8[_~ }
	>> |
	<<
		{ s2 s8 c'''4 < bes c >8 } \\
		{ s2 s4 a,8[ r } \\
		{ ees8( d' c bes g4) s4 }
	>> |
	s1 |
	s1\sustainOff |
	
	%55
	<<
		{ a'8 f] g4) \grace { \change Staff = "pianoLower" \stemUp g,,32( d' g \change Staff = "pianoUpper" \stemDown bes d g d'8) } \stemNeutral < d,, fis bes >8( < f a d > <d f bes > < bes d g > } \\
		{ < c' ees >8] < a c ees >8 r8 s2 }
	>> |
	\clef bass
	<<
		{ s4 \once \stemDown g, bes8^-( d^- bes^- g^- } \\
		{ \once \tupletUp \tuplet 3/2 { f'8 c f] } r8 < c,, g' >___~ q4. q8_~ } 
	>> |
	s1 |
	s1 |
	
	%56
	<<
		{ \tuplet 3/2 { < d, f bes >8_- \tag #'layout _\< < f a d >_- < a d f >_- } \stemDown < bes_~ d~ a'~ >4 \tag #'layout \sf q8) \tag #'layout \ff \noBeam \stemNeutral < bes, d f bes >_> \tag #'layout \< < d f a d >_> < f a d f >_>\!} \\
		{ }
	>> |
	<<
		{ \tupletDown \tuplet 3/2 { bes''8^- d^- < bes f' >^- } < g e' >4)^~ q8 \noBeam < d g >8_> < f bes >_> < a bes d >_> } \\
		{ < c,, g' >4 r8 < c g' >8_>_~ q2 }
	>> |
	s1 |
	s1 |
	
	\tupletNeutral
	\mBreak
	
	%57
	<<
		{ \stemDown < a_~ bes~ d~ a'~ >4 \tag #'layout _\sf q8 \noBeam \stemUp < a e' a >(^
		\tag #'layout \>
		\( < f c' f >4)
		\tag #'layout \!
		 s8 < ees b' ees >( \tag #'layout ^\> } \\
		{ s4. c'8[ bes a aes g }
	>> |
	<<
		{ < g'' bes e >4^~ q8 \noBeam \stemDown < bes e >_( \tag #'layout _\> _\( < f c' >4)\! s8 < f b >8 } \\
		{ r8 < c g >4_> \stemUp c'8[ bes a aes g }
	>> |
	s1 |
	s1 |
	
	%58
	<<
		{ \stemUp < c, g' c >4)
		\tag #'layout \!
		 s8 < bes fis' bes >8^
		 \tag #'layout \>
		 ( < g g' >4)
		\tag #'layout \!
		 \)^- e'^- \tag #'layout _\p } \\
		{ f8 e ees d] < c d >2 }
	>> |
	<<
		{ \stemDown < c, g' >4 s8 < c fis >8_( \tag #'layout _\> < d, d' >2_-)\!\)_~ } \\
		{ \stemUp f'8 e ees d] \stemUp \crossStaff { g4 e } }
	>> |
	s1 |
	s1 |
	
	\bar "||"
	\time 2/4
	
	%59
	<<
		{ < c d fis >4^- < bes d g >^-^\fermata } \\
		{ }
	>> |
	<<
		{ \stemDown < d, d' >4 < g, g' >_-_\fermata } \\
		{ \stemUp \crossStaff { fis''4 g } }
	>> |
	s2 |
	s2 |
	
	\pBreak
	\bar "||"
	\time 4/4
	
	%60
	<<
		{ g''2(~^\markup { \italic "marquez le chant" } g8 a fis e } \\
		{ d,16-. b'-. d-. b-. d,-. b'-. d-. b-. e, b' e b e, b' e b }
	>> |
	<<
		{ s4 < b g' > r < b g' > } \\
		{ < g, d' b' >\arpeggio r < c, g' e' >\arpeggio r }
	>>|
	s1 |
	\override SustainPedal.transparent = ##f
	s2\sustainOn s2
    \tag #'midi \sustainTap
    \tag #'layout \sustainOn |

	%61
	<<
		{ d4 e8 fis fis e e4 } \\
		{ b,16 fis' b fis r fis b fis e b' e b e, b' e b }
	>> |
	<< 
		{ r4 < b'' fis' > s < b g' > } \\
		{ < d,, b' fis' >4\arpeggio r < e b' g' >\arpeggio r }
	>> |
	s1 |
	\override SustainPedal.transparent = ##t
	s2\sustainOff\sustainOn s2\sustainOff\sustainOn |
	
	\mBreak
	
	%62
	<<
		{ b'2)~( b8 c a g } \\
		{ b,16 c e c b c e c b c e c < g a > c e c }
	>> |
	< c' g' e' >4\arpeggio \clef treble < c' e a > \clef bass < fis,, c' a' >\arpeggio \clef treble < c'' e a > |
	s1 |
	s2\sustainOff\sustainOn s2\sustainOff\sustainOn |
	
	%63
	<<
		{ < fis, fis' >4 < g g' >8 < a a'~ > a' b g fis } \\
		{ fis,16 b d b g b d b fis b d b g b d b }
	>> |
	\clef bass < b, fis' d' >4\arpeggio \clef treble < d' fis b > \clef bass < g,, d' b' >\arpeggio \clef treble < d'' fis b > |
	s1 |
	s2\sustainOff\sustainOn s2\sustainOff\sustainOn |
	
	\mBreak
	
	%64
	<<
		{ <e, e'>4 < fis fis' >8 < g g' >~ g' a fis e } \\
		{ e,16 b' c b fis b c b e, a c a fis a c a }
	>> |
	\clef bass < a, e' c' >4\arpeggio \clef treble < c' e a > \clef bass < fis,, c' a' >\arpeggio \clef treble < c'' e a > |
	s1 |
	s2\sustainOff\sustainOn s2\sustainOff\sustainOn |
	
	%65
	<<
		{ fis'2) s8 a,^-[ fis^- e^- } \\
		{ fis16 b d b d, b' d b < a c >[ e] e[ c] d[ b] c[ fis,] }
	>> |
	<<
		{ s4 < b fis' > r2 } \\
		{ \clef bass < b, fis' d' >4\arpeggio r fis b8 d }
	>> |
	s1 |
	s2\sustainOff\sustainOn s2\sustainOff\sustainOn |
	
	\mBreak
	
	%66 (copied from 34)
	<<
		{ < b d fis >8--] r \stemDown <b' b'>2 \tag #'layout ^\> ( q4 } \\
		{  }
	>> |
	<<
		{ s1 } \\
		{ \stemUp b2--^~ <b, b'>} 
	>> |
	s1 |
	s2\sustainOff\sustainOn s2\sustainOff |
	
	%67 (copied from 35)
	<<
		{ \bar "" \grace { \change Staff = "pianoLower" \stemUp b,32 \change Staff = "pianoUpper" \stemDown c e b' c e b'\!~ } \bar"|" \stemUp <b~ b,~>2 q8 <a a,> <d d,> <b b,> } \\
		{ r8 \stemDown <c, e> \change Staff = "pianoLower" \stemUp <c, e> \change Staff = "pianoUpper" \stemDown <c' e> s \stemNeutral <e g>[ s <c e>] }
	>> |
	<<
		{ s2 s8 <e'' g>[ r < c e >] } \\
		{ \grace {\stemDown \scaleDurations #'(7 . 8) b4_>^~} \bar"|" <a, e' b'>2 b'8 a d b }
	>> |
	s1\pp |
	s2\sustainOn s2\sustainOff\sustainOn |
	
	%68 (copied from 36)
	<<
		{ <b b'>4-- <a a'>-- <g g'>-- <a a'>-- } \\
		{ r8 <fis,~ c'~ e~>8__ q4 } \\
		{ \stemDown s4. <c'' e>4 q <c_~ e~>8[ }
	>> |
	<<
		{ b4 fis b a } \\
		{ s8 <d,,~ a'~>__ q4} \\
		{ \stemDown s4. <c'' e>4 q <c_~ e~>8[ } \\
	>> |
	s1 |
	\override SustainPedal.transparent = ##f
	s8 s2..
    \tag #'layout \sustainOn
    \tag #'midi \sustainTap
  |
	
	\mBreak
	
	%69 (copied from 37)
	<<
		{ <e,_~ e'~>2-- q8 <d d'>---. <g g'>---. <fis fis'>---. } \\
		{ s8 <b e>4 q c4 <c d>8[ } \\
		{ \stemDown <c e>8] }
	>> |
	<<
		{ g2 <e, e'>8_-_. <d d'>_-_. <g g'>_-_. <fis fis'>_-_.} \\
		{ s8 <b' e>4 q c,4 <c d>8[ } \\
		{ \stemDown <c' e>8] }
	>> |
	s2 s2\pp |
	\override SustainPedal.transparent = ##t
	s8\sustainOff s4.\sustainOn s8\sustainOff\sustainOn s8\sustainOff\sustainOn s8\sustainOff\sustainOn s8\sustainOff\sustainOn |
	
	%70
	<<
		{ < e, e' >4)^_ b'-> \tag #'layout ^\< < gis, d' d' b' >\arpeggio^\markup { \italic "m.g." } < e'' c' fis > } \\
		{ < b e >8] b,->[ d-> e-> fis->] s8 \tuplet 3/2 { c'8_> b_> a_> } }
	>> |
	<< 
		{ < e,, e' >4__ s \stemDown < e b' fis' >\arpeggio \acciaccatura { \once \stemUp < d_~ a'_~ >8 } < d a' fis' e' >4 } \\
		{ < b' e >8] \stemUp b^>[ d^> e^> fis^>] s \tuplet 3/2 { c'8^> b^> a^> } }
	>> |
	s1\f |
	s2\sustainOff
	\override SustainPedal.transparent = ##f
	s4\sustainOn s4
    \tag #'midi \sustainTap
    \tag #'layout \sustainOn |
	
	%71
	<<
		{ \grace { \change Staff = "pianoLower" < g,,, g' >8 fis''32_> b fis' \change Staff = "pianoUpper" \stemDown b g' b } \stemUp d2\!^\markup { \italic "m.g." }~ \shiftOff d } \\
		{ s2 \shiftOn e,,4_> d_> } \\
		{ \stemDown < b'_~ fis'_~ b~ >2 \shiftOff q }
	>> |
	<< 
		{< fis b^~ fis' >2 b } \\
		{ < g,, g' >2_~ q } \\
		{ s2 < e' e' >4^> < d d' >^> }
	>> |
	s2 s2\ff |
	s1 
    \tag #'layout \sustainOn
    \tag #'midi \sustainTap
  |
	
	%72
	< d g d' >2\fermata r |
	<<
		{ < d' g d' >2\fermata } \\
		{ \bar "" \slashedGrace { < g,,_~ g'_~ >8 } \bar "|" < g g' >2 }
	>> r2 |
	s1 |
  \override SustainPedal.transparent = ##t
	s2 s2\sustainOff |

}