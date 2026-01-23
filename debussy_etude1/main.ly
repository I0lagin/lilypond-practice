\version "2.24.4"

%% MOLA Guidelines for Music Preparation stuff
%% #(set-global-staff-size 21.26)
%% 21.26: 7.5mm
%% 22.67: 8.0mm
%% 24.09: 8.5mm

\header {

  title = "Pour les «cinq doigts»"
  subtitle = "五本の指のための練習曲"
  composer = "Claude Debussy"
  copyright = "Public Domain"
  tagline = \markup {
    \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column {
      \small \line {Placed in the \with-url #"https://creativecommons.org/public-domain/" {public domain:} \italic Free to download, with the \italic freedom to distribute, modify, and perform. }
      \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line {\typewriter www.LilyPond.org} by Jose &grqq;I0lagin&erqq; Tamad. } }
    }
  }  
}

\paper {

  #(set-paper-size "a4")
  top-margin = 1.4\cm
  bottom-margin = 1.4\cm
  right-margin = 2\cm
  left-margin = 2\cm
  %% fluc. 1.0-2.0; take RL
  
  #(define fonts
    (set-global-fonts
     #:roman "MLMRoman8, Harano Aji Mincho"
     #:sans "MLMSans8, Harano Aji Gothic"
     #:typewriter "MLMMono8"
     #:factor (/ staff-height pt 20)
   ))
  #(include-special-characters)

  tagline = ##f
  print-all-headers = ##f
  ragged-last = ##t
  
}

% QOL
mBreak = { \break }
pBreak = { \pageBreak }
sustainTap = \sustainOff\sustainOn
toUpper = { \change Staff = "pianoUpper" \stemNeutral }
toLower = { \change Staff = "pianoLower" \stemNeutral }
toUpperStem = { \change Staff = "pianoUpper" \stemDown }
toLowerStem = { \change Staff = "pianoLower" \stemUp }
tupletOff = { \omit TupletNumber \omit TupletBracket }

% subdividing beams
divtwo = { \set subdivideBeams = ##t \set baseMoment = #(ly:make-moment 1/2) \set beatStructure = 1,1 }
divfour = { \set subdivideBeams = ##t \set baseMoment = #(ly:make-moment 1/4) \set beatStructure = 1,1,1,1 }
diveight = { \set subdivideBeams = ##t \set baseMoment = #(ly:make-moment 1/8) \set beatStructure = 2,2,2,2 }
divsixteen = { \set subdivideBeams = ##t \set baseMoment = #(ly:make-moment 1/16) \set beatStructure = 4,4,4,4 }

\include "global/globalLayout.ily" % time, tempo markings, keys, barlines, etc.
\include "global/globalMidi.ily" % tempo changes & MIDI dynamics
\include "piano/pianoDynamics.ily" % dynamics & hairpins for layout
\include "piano/pianoNotes.ily" % the music

% when a composition includes repeats, consider using tag #'midi
% - voltas:
%   - layout: set volta/barlines and go straight to next measure
%   - midi: either put repeated music/global in a separate variable, or copy and paste, then call with \tag #'midi


mainLayout = {

  \new PianoStaff \with {
    %% instrumentName = \markup { "PIANO" }
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
	\pianoPedal
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