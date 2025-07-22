\version "2.24.4"

#(set-global-staff-size 21.26)
%% MOLA Guidelines for Music Preparation stuff

\header {

  title = "Rêverie"
  subtitle = "夢想"
  composer = "Claude Debussy"
  copyright = \markup {
    \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column {
      \small \line {Sheet and \typewriter .midi placed in the \with-url #"https://creativecommons.org/public-domain/" \bold {public domain:} \italic free to download, with the \italic freedom to distribute, modify and perform. }
      \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line {\typewriter LilyPond} by Jose &grqq;I0lagin&erqq; Tamad at \with-url #"https://github.com/I0lagin/lilypond-practice" \line { \typewriter GitHub. } } }
    }
  }  
}

\paper {

  #(set-paper-size "b4")
  top-margin = 2\cm
  bottom-margin = 2\cm
  right-margin = 2\cm
  left-margin = 2\cm
  
  #(define fonts
    (set-global-fonts
     #:roman "LMRoman8, Harano Aji Mincho"
     #:sans "LMSans8, Harano Aji Gothic"
     #:typewriter "LMMono8"
     #:factor (/ staff-height pt 20)
   ))
  #(include-special-characters)

  tagline = ##f
  print-all-headers = ##f
  ragged-last = ##f
  
}

% QOL
mBreak = { \break }
pBreak = { \break }
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
      
      %\autoBreaksOff
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