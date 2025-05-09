\version "2.24.4"

\paper {
  print-all-headers = ##t
  ragged-last = ##f
  tagline = ##f
  top-margin = 20\mm
  bottom-margin = 20\mm

  scoreTitleMarkup = \markup {
    \dir-column {
      \fill-line {
        \null
        \dir-column {
          \center-align \sans \fromproperty #'header:dedication
          \vspace #1
          \center-align \fontsize #5 \bold \fromproperty #'header:title
        }
        \null
      }
      \vspace #0.5
      \fill-line {
        \dir-column {
          \center-align \italic "Dieu fluvial riant de l'eau qui le chatouille."
          \center-align \fontsize #-4 \italic "Henri de Régnier"
        }
        \null
      }
      \vspace #1
      \fill-line {
        \null
        \dir-column {
          \center-align \fromproperty #'header:composer
        }
      }
    }
  }

% \dir-column {
% \fill-line {



}

% other

ppDolcissimo = #(make-dynamic-script
               (markup  #:dynamic "pp"
                        #:normal-text #:italic "dolcissimo"))
ppSubito = #(make-dynamic-script
               (markup  #:dynamic "pp"
                        #:normal-text #:italic "subito"))

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

<<

  \new StaffGroup \with {
    \override SystemStartBracket.stencil = ##f
  } <<

    \new Staff \with {
        \RemoveAllEmptyStaves
      }
      \relative { \pianoUpperTwo }

    \new PianoStaff \with {
      instrumentName = \markup { "Piano" }
    } \keepWithTag #'layout <<
        \autoBreaksOff
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
          \pianoPedal
          \relative { \pianoLower }
        >>
    >>
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
      \new Staff = "pianoUpperTwo" << \relative { \pianoUpperTwo } { \pianoDynamicsMidi } { \pianoPedal } >>
      \new Staff = "pianoUpper" << \relative { \pianoUpper } { \pianoDynamicsMidi } { \pianoPedal } >>
      \new Staff = "pianoLower" << \relative { \pianoLower } { \pianoDynamicsMidi } { \pianoPedal } >>
    >>

}

% when calling from a top main.ly, comment below

\score {
  << \mainLayout >> % brackets just in case of ly2video (it inserts `\unfoldRepeats` after `\score` but doesn't add any brackets)
  \header {
    dedication = \markup { \sans "à mon cher Maître Gabriel Fauré" }
    title = "Jeux d'Eau"
    composer = "Maurice Ravel"
  }
  \layout {
    #(layout-set-staff-size 14)
    \context {
      \Score
      \override StaffGrouper.staff-staff-spacing.padding = #4
      \override StaffGrouper.staff-staff-spacing.basic-distance = #4
      % \override SpacingSpanner.uniform-stretching = ##t
    }
  }
}

\score {
  << \mainMidi >>
  \midi {
    \context { \Score midiChannelMapping = #'instrument }
    
  }
}