\version "2.24.4"

\paper {
  print-all-headers = ##t
  ragged-last = ##f
  tagline = ##f
}

% QOL
mBreak = { \break }
pBreak = { \pageBreak }
sustainTap = \sustainOff\sustainOn
toUpper = { \change Staff = "pianoUpper" }
toLower = { \change Staff = "pianoLower" }

% subdividing beams
divtwo = { \set subdivideBeams = ##t \set baseMoment = #(ly:make-moment 1/2) \set beatStructure = 1,1 }
divfour = { \set subdivideBeams = ##t \set baseMoment = #(ly:make-moment 1/4) \set beatStructure = 1,1,1,1 }
diveight = { \set subdivideBeams = ##t \set baseMoment = #(ly:make-moment 1/8) \set beatStructure = 2,2,2,2 }
divsixteen = { \set subdivideBeams = ##t \set baseMoment = #(ly:make-moment 1/16) \set beatStructure = 4,4,4,4 }

% other

primer = \tempo \markup { \bold { "1" \hspace #-1 \super "er" "Mouvement" } }
mfTres = \tweak DynamicText.self-alignment-X #LEFT
					#(make-dynamic-script
						(markup  #:dynamic "mf"
						#:normal-text #:italic "très soutenu"))

\include "../preamble.ly"
\include "global.ly" % in this case, has layout and midi with tags
\include "piano.ly" % the music

mainLayout = {

  \new PianoStaff \with {
    instrumentName = \markup { \italic "PIANO" }
    \consists "Span_arpeggio_engraver"
    \consists "Span_stem_engraver"
  } \keepWithTag #'layout <<
      \set PianoStaff.connectArpeggios = ##t
      \new Staff = "pianoUpper" << \global \relative { \pianoUpper } >>
      \new Dynamics = "pianoDynamics" << \global \pianoDynamics >>
      \new Staff = "pianoLower" << \global \relative { \pianoLower } >>
      \new Dynamics = "pianoPedal" << \global \pianoPedal >>
    >>

}

mainMidi = {

    \new PianoStaff \with{
      instrumentName = "Piano"
      midiInstrument = "acoustic grand"
      midiMaximumVolume = 1.0
      midiMinimumVolume = 0.0
      \accepts Dynamics
      \consists "Dynamic_performer"
    } \keepWithTag #'midi <<
        \global
        \new Staff = "pianoUpper" << \relative { \pianoUpper } { \pianoPedal } >>
        \new Staff = "pianoLower" << \relative { \pianoLower } { \pianoPedal } >>
      >>

}

% when calling from a top main.ly, comment below

\score { 
  << \mainLayout >> % brackets just in case of ly2video (it inserts `\unfoldRepeats` after `\score` but doesn't add any brackets)
  \header {
    dedication = \markup { \italic "á Madamé la Princesse E.de POLIGNAC." }
    title = "PAVANE"
    subtitle = "POUR UNE INFANTE DÉFUNTE"
    composer = \markup { \sans "Maurice Ravel." }
  }
  \layout { 
    %#(layout-set-staff-size 16)
  }
}

\score {
  << \mainMidi >>
  \midi { 
    \context { \Score midiChannelMapping = #'instrument }
  }
}