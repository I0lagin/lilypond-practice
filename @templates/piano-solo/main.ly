\version "2.24.4"

\paper {
  print-all-headers = ##t
  ragged-last = ##t
  tagline = ##f

  %remove below
  scoreTitleMarkup = \markup {
    \dir-column {
        \fill-line {
          \null
          \center-align \fontsize #-2 \bold "à Paul SORDES"
        }
        \fill-line {
          \dir-column {
            \center-align \fontsize #2 \bold "MIROIRS"
            \center-align \fontsize #-2 \bold "No. III"
          }
          \null
        }
        \fill-line {
          \null
          \fontsize #2 \bold "Une barque sur l'océan"
        }
      }
    }

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

\include "globalLayout.ly" % time, tempo markings, keys, barlines, etc.
\include "globalMidi.ly" % tempo changes & MIDI dynamics
\include "dynamics.ly" % dynamics & hairpins for layout
\include "piano.ly" % the music

% when a composition includes repeats, consider using tag #'midi
% - voltas:
%   - layout: set volta/barlines and go straight to next measure
%   - midi: either put repeated music/global in a separate variable, or copy and paste, then call with \tag #'midi


mainLayout = {

  \new PianoStaff \with {
    instrumentName = \markup { \italic "PIANO" }
  } \keepWithTag #'layout <<
      \autoBreaksOff
      \new Dynamics <<
        \globalLayout
        \pianoDynamicsUpper
      >>
      \new Staff = "pianoUpper" << 
        \globalLayout
        \relative { \pianoUpper }
      >>
      \new Dynamics <<
        \globalLayout
        \pianoDynamicsBetween
      >>
      \new Staff = "pianoLower" <<
        \globalLayout
        \relative { \pianoLower }
      >>
      \new Dynamics <<
        \globalLayout
        \pianoDynamicsLower
      >>
      %\new Dynamics << \globalLayout \pianoPedal >>
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
    }
    \keepWithTag #'midi <<
      \globalMidi
      \new Staff = "pianoUpper" << \relative { \pianoUpper } { \pianoDynamicsMidi } { \pianoPedal } >>
      \new Staff = "pianoLower" << \relative { \pianoLower } { \pianoDynamicsMidi } { \pianoPedal } >>
    >>

}

% when calling from a top main.ly, comment below

\score { 
  << \mainLayout >> % brackets just in case of ly2video (it inserts `\unfoldRepeats` after `\score` but doesn't add any brackets)
  \header {

  }
  \layout { 
    #(layout-set-staff-size 16)
  }
}

\score {
  << \mainMidi >>
  \midi { 
    \context { \Score midiChannelMapping = #'instrument }
  }
}