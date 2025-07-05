\version "2.24.4"

\paper {
  print-all-headers = ##t
  ragged-last = ##t
  tagline = ##f

  scoreTitleMarkup = \markup {
    \dir-column {
      \fill-line { \center-align \fontsize #8 \bold "RÊVERIE" }
      \vspace #3
      \fill-line{
        \center-align \bold "POUR LE PIANO"
        \center-align \bold "CLAUDE DEBUSSY"
      }
      \vspace #3
    }
  }

  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  right-margin = 2\cm
  left-margin = 2\cm

}

% QOL
mBreak = { \break }
pBreak = { \pageBreak }
sustainTap = \sustainOff\sustainOn
toUpper = { \change Staff = "pianoUpper" }
toLower = { \change Staff = "pianoLower" }
toUpperStem = { \toUpper \stemDown }
toLowerStem = { \toLower \stemUp }

% subdividing beams
divtwo = { \set subdivideBeams = ##t \set baseMoment = #(ly:make-moment 1/2) \set beatStructure = 1,1 }
divfour = { \set subdivideBeams = ##t \set baseMoment = #(ly:make-moment 1/4) \set beatStructure = 1,1,1,1 }
diveight = { \set subdivideBeams = ##t \set baseMoment = #(ly:make-moment 1/8) \set beatStructure = 2,2,2,2 }
divsixteen = { \set subdivideBeams = ##t \set baseMoment = #(ly:make-moment 1/16) \set beatStructure = 4,4,4,4 }

\include "../preamble.ly"
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
    instrumentName = \markup { "PIANO" }
    \consists "Span_arpeggio_engraver"
    \consists "Span_stem_engraver"
  } \keepWithTag #'layout <<
      
      \autoBreaksOff
      \set PianoStaff.connectArpeggios = ##t
      \accidentalStyle piano-cautionary

      \new Staff = "pianoUpper" << 
        \globalLayout
        \pianoDynamicsUpper
        \relative { \pianoUpper }
      >>
      \new Dynamics <<
        \globalLayout
        \pianoDynamicsBetween
      >>
      \new Staff = "pianoLower" <<
        \globalLayout
        \pianoDynamicsLower
	%\pianoPedal
        \relative { \pianoLower }
      >>
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
  
  }
}

\score {
  << \mainMidi >>
  \midi { 
    \context { \Score midiChannelMapping = #'instrument }
  }
}