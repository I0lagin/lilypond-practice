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

modereLayout = {

  \new PianoStaff \with {
    instrumentName = \markup { \italic "PIANO" }
    \consists "Span_stem_engraver"
    \consists "Span_arpeggio_engraver"
  } \keepWithTag #'layout <<
      \set PianoStaff.connectArpeggios = ##t
      \autoBreaksOff
      \new Staff = "pianoUpper" << 
        \globalLayoutI
        \relative { \pianoUpperI }
      >>
      \new Dynamics = "pianoDynamics" <<
        \globalLayoutI
        \pianoDynamicsI
      >>
      \new Staff = "pianoLower" <<
        \globalLayoutI
        \relative { \pianoLowerI }
      >>
      % \new Dynamics = "pianoPedal" << \globalLayoutI \pianoPedalI >>
    >>

}

modereLayoutUnfolded = {

  <<

    \new PianoStaff \with {
      instrumentName = \markup { \italic "PIANO" }
    } \keepWithTag #'unfold <<
        \set PianoStaff.connectArpeggios = ##t
        \autoBreaksOff
        \new Staff = "pianoUpper" << 
          \globalLayoutI
          \relative { \pianoUpperI }
        >>
        \new Dynamics = "pianoDynamics" <<
          \globalLayoutI
          \pianoDynamicsI
        >>
        \new Staff = "pianoLower" <<
          \globalLayoutI
          \relative { \pianoLowerI }
        >>
        % \new Dynamics = "pianoPedal" << \globalLayoutI \pianoPedalI >>
      >>
  >>

}


modereMidi = {

    \new PianoStaff \with{
      instrumentName = "Piano"
      midiInstrument = "acoustic grand"
      midiMaximumVolume = 1.0
      midiMinimumVolume = 0.0
      \consists "Span_arpeggio_engraver"
      \accepts Dynamics
      \consists "Dynamic_performer"
    }
    \keepWithTag #'midi <<
      \globalMidiI
      \new Staff = "pianoUpper" << \relative { \pianoUpperI }  { \pianoPedalI } >>
      \new Staff = "pianoLower" << \relative { \pianoLowerI }  { \pianoPedalI } >>
    >>

}

% \score { 
%   << \modereLayout >>
%   \header {
%     title = "I"
%   }
%   \layout { 
%     #(layout-set-staff-size 16)
%   }
% }
% 
% \score {
%   << \modereMidi >>
%   \midi { 
%     \context { \Score midiChannelMapping = #'instrument }
%   }
% }
