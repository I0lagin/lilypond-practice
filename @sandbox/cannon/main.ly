\version "2.24.4"


\include "globalLayout.ly"
\include "globalMidi.ly"
\include "cannon.ly"
\include "corni_12.ly"
\include "cornet_34.ly"


\score {

  <<

    \new Staff \with {
      instrumentName = "Pist. B."
    } <<
        << \globalLayout \relative { \voiceOne \transposition f, \pistonI } >>
        << \globalLayout \relative { \voiceTwo \transposition f, \pistonII } >>
        << \globalLayout \pistonIaII >>
    >>
    
    \new StaffGroup \with {
        instrumentName = \markup { "Corni in F" }
    } <<
      \new Staff \with {
        \override InstrumentName.self-alignment-X = #RIGHT
        instrumentName = \markup { \right-column { "I." "II." } }
      } <<
          << \globalLayout \relative { \voiceOne \transposition bes \cornetIII } >>
          << \globalLayout \relative { \voiceTwo \transposition bes \cornetIV } >>
          << \globalLayout \cornetIIIaIV >>
      >>
      \new Staff \with {
        \override InstrumentName.self-alignment-X = #RIGHT
        instrumentName = \markup { \right-column { "III." "IV." } }
      } <<
          << \globalLayout \relative { \voiceOne \transposition bes \cornetIII } >>
          << \globalLayout \relative { \voiceTwo \transposition bes \cornetIV } >>
          << \globalLayout \cornetIIIaIV >>
      >>
    >>

    \new DrumStaff \with {
      instrumentName = "Canon."
    } << \globalLayout \relative { \cannon } >>

  >>

}


\score {

  <<

    \globalMidi

  \new Staff \with {
    midiInstrument = "trumpet"
    \accepts Dynamics
    \consists "Dynamic_performer"
  } <<
      \transposition bes << \relative { \pistonI } \pistonIaII >>
      \transposition bes << \relative { \pistonII } \pistonIaII >>
    >>

  \new Staff \with {
    midiInstrument = "french horn"
    \accepts Dynamics
    \consists "Dynamic_performer"
  } <<
      \transposition f << \relative { \cornetIII  } \cornetIIIaIV >>
      \transposition f << \relative { \cornetIV  } \cornetIIIaIV >>
    >>

  \new Staff \with {
      midiInstrument = "gunshot"
      midiMinimumVolume = #1.0
      midiReverbLevel = #1.0
      midiChorusLevel = #1.0
      midiExpression = #1.0
      \accepts Dynamics
      \consists "Dynamic_performer"
    } <<
      << \relative c, { \cannon } >>
    >>

  >>

  
  
  \midi {
    \context { \Score midiChannelMapping = #'instrument }
  }

}