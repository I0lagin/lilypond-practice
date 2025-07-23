\version "2.24.4"

#(set-global-staff-size 21.26)
%% MOLA Guidelines for Music Preparation stuff

\header {

  title = "Pavane pour une infante défunte"
  subtitle = "亡き王女のためのパヴァーヌ"
  composer = "Maurice Ravel"
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

\include "global.ly" % in this case, has layout and midi with tags
\include "piano.ly" % the music

mainLayout = {

  \new PianoStaff \with {
    instrumentName = \markup { \italic "PIANO" }
    \consists "Span_arpeggio_engraver"
    \consists "Span_stem_engraver"
  } \keepWithTag #'layout <<
    \autoBreaksOff
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