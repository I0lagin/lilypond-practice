\version "2.24.4"

\paper {
  print-all-headers = ##t
  ragged-last = ##t
}

mBreak = { \break }
pBreak = { \pageBreak }
sustainTap = \sustainOff\sustainOn
toUpper = { \change Staff = "pianoUpper" }
toLower = { \change Staff = "pianoLower" }

divtwo = { \set subdivideBeams = ##t \set baseMoment = #(ly:make-moment 1/2) \set beatStructure = 1,1 }
divfour = { \set subdivideBeams = ##t \set baseMoment = #(ly:make-moment 1/4) \set beatStructure = 1,1,1,1 }
diveight = { \set subdivideBeams = ##t \set baseMoment = #(ly:make-moment 1/8) \set beatStructure = 2,2,2,2 }
divsixteen = { \set subdivideBeams = ##t \set baseMoment = #(ly:make-moment 1/16) \set beatStructure = 4,4,4,4 }

\include "piano.ly"
\include "global.ly"


mainIILayout = {

  \new PianoStaff \with {
    instrumentName = \markup { \italic "PIANO" }
    \consists "Span_stem_engraver"
    \consists "Span_arpeggio_engraver"
    pedalSustainStyle = #'bracket
  } \keepWithTag #'layout <<
      \autoBreaksOff
      \new Dynamics <<
        \globalII
        \pianoIIDynamicsUpper
      >>
      \new Staff = "pianoUpper" << 
        \globalII
        \relative { \pianoIIUpper }
      >>
      \new Dynamics <<
        \globalII
        \pianoIIDynamicsBetween
      >>
      \new Staff = "pianoLower" <<
        \globalII
        \relative { \pianoIILower }
      >>
      \new Dynamics <<
        \globalII
        \pianoIIDynamicsLower
      >>
      \new Dynamics << \globalII \pianoIIPedal >>
    >>

}

mainIIMidi = {

    \new PianoStaff \with{
      instrumentName = "Piano"
      midiInstrument = "acoustic grand"
      midiMaximumVolume = 1.0
      midiMinimumVolume = 0.0
      \accepts Dynamics
      \consists "Dynamic_performer"
    }
    \keepWithTag #'midi <<
      \globalII
      \new Staff = "pianoUpper" << \relative { \pianoIIUpper }  { \pianoIIPedal } >>
      \new Staff = "pianoLower" << \relative { \pianoIILower }  { \pianoIIPedal } >>
    >>

}

%\score { 
%  << \mainIILayout >>
%  \header {
%    title = "II"
%  }
%  \layout { 
%    #(layout-set-staff-size 16)
%  }
%}

% \score {
%   << \mainIIMidi >>
%   \midi { 
%     \context { \Score midiChannelMapping = #'instrument }
%   }
% }

