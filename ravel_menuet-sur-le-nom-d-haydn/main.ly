\version "2.24.4"

\paper {
 
  #(set-default-paper-size "a4")
  #(define fonts
    (set-global-fonts
     #:roman "LMRoman8, Harano Aji Mincho"
     #:sans "LMSans8, Harano Aji Gothic"
     #:typewriter "HackGen"
    ))

  tagline = ##f
  
}

mBreak = { \break }
pBreak = { \pageBreak }
sustainTap = \sustainOff\sustainOn
toUpper = { \change Staff = "pianoUpper" }
toLower = { \change Staff = "pianoLower" }

\include "piano.ly"
\include "global.ly"

\paper {
  % ragged-last = ##f
  annotate-spacing = ##f
	print-first-page-number = ##t
}

\header {
  title = "MENUET"
  subtitle = \markup { \italic "sur le nom d'HAYDN" }
  composer = "MAURICE RAVEL"
  poet = \markup {
    \score {
      << 
        \new Staff \with { \magnifyStaff #(magstep 0) } { 
          \relative { 
            \override Score.TimeSignature.stencil = ##f
            \override Score.BarLine.stencil = ##f
            \override Staff.Clef.full-size-change = ##t
            \set Staff.forceClef = ##t
            \stemDown
            b'4 a d d g \once \hideNotes g8
            \override Staff.Clef.rotation = #'(180 -0.5 0)
            \clef treble 
          }
        }
        \addlyrics {  \markup{\bold "H"} 
                      \markup{\bold "A"}
                      \markup{\bold "Y"}
                      \markup{\bold "D"}
                      \markup{\bold "N"}
        }
      >> 
      \layout {
        #(layout-set-staff-size 14)
        ragged-last = ##t
      }
    }
  }
}


\score {

  \new StaffGroup \with {
    \override VerticalAxisGroup.staff-staff-spacing =
      #'((basic-distance . 15)
        (minimum-distance . 5)
        (padding . 1))
    \override SystemStartBracket.stencil = ##f
    \mergeDifferentlyDottedOn
  }
  <<

    \new PianoStaff \with {
      instrumentName = \markup { \italic "PIANO" }
      \override SpanBar.glyph-name = #"|"
    } <<
        \new Staff = "pianoUpper" << \global \relative { \pianoUpper } >>
        \new Dynamics = "pianoDynamics" << \global \pianoDynamics >>
        \new Staff = "pianoLower" << \global \relative  { \pianoLower } >>
        % \new Dynamics = "pianoPedal" << \global \pianoPedal >>
      >>

     \new Staff = "pianoLowerTwo" \with {
      \RemoveAllEmptyStaves
    } <<
        \global
        \pianoDynamicsTwo
        \relative { \pianoLowerTwo }
      >>

  >>
 
  \layout { }
  
}

\score {

  \new PianoStaff \with{
    instrumentName = "Piano"
		midiInstrument = "acoustic grand"
    midiMaximumVolume = 1.0
    midiMinimumVolume = 0.2
		\consists "Span_arpeggio_engraver"
  } << % r1024 to press pedals a little late
    \global
    \new Staff = "pianoUpper" << \relative { \pianoUpper } \pianoDynamics { \pianoPedal } >>
    \new Staff = "pianoLower" << \relative { \pianoLower } \pianoDynamics { \pianoPedal } >>
    \new Staff = "pianoLowerTwo" << \relative { \pianoLowerTwo } \pianoDynamicsTwo { \pianoPedal } >>
  >>

  \midi {
    \context {
      \Score midiChannelMapping = #'instrument
    }
  }

}