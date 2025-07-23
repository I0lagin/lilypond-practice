\version "2.24.4"

%% MOLA Guidelines for Music Preparation stuff
#(set-global-staff-size 21.26)
%% 21.26: 7.5mm
%% 22.67: 8.0mm
%% 24.09: 8.5mm

\header {

  title = "I"
  tagline = \markup {
    \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column {
      \small \line {Placed in the \with-url #"https://creativecommons.org/public-domain/" {public domain:} \italic Free to download, with the \italic freedom to distribute, modify, and perform. }
      \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line {\typewriter www.LilyPond.org} by Jose &grqq;I0lagin&erqq; Tamad. } }
    }
  }  
}

\paper {

  #(set-paper-size "a4")
  top-margin = 2\cm
  bottom-margin = 2\cm
  right-margin = 2\cm
  left-margin = 2\cm

  
  #(define fonts
    (set-global-fonts
     #:roman "MLMRoman8, Harano Aji Mincho"
     #:sans "MLMSans8, Harano Aji Gothic"
     #:typewriter "MLMMono8"
     #:factor (/ staff-height pt 20)
   ))
  #(include-special-characters)

  tagline = ##t
  print-all-headers = ##f
  ragged-last = ##f
  
}

%% QOL
mBreak = { \break }
pBreak = { \pageBreak }
sustainTap = \sustainOff\sustainOn
toUpper = { \change Staff = "pianoUpper" \stemDown }
toLower = { \change Staff = "pianoLower" \stemUp }

%% subdividing beams
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

\score { 
  << \modereLayout >>
  \header {
    title = "I"
  }
  \layout { 
    #(layout-set-staff-size 16)
  }
}

\score {
  << \modereMidi >>
  \midi { 
    \context { \Score midiChannelMapping = #'instrument }
  }
}
