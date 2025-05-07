\version "2.24.4"

\include "01_modere/main.ly"
\include "02_mouvement_de_menuet/main.ly"

\book {

  \paper {
    print-all-headers = ##t
  }

  \header {
    title = \markup { \fontsize #2 "SONATINE" }
    composer = "MAURICE RAVEL"
  }
    
  \score {
    { \modereLayout }
    \header {
    title = "I"
    composer = ##f
  }
    \layout { 
      #(layout-set-staff-size 16)
    }
  }
    
  \pageBreak

  \score { 
    { \mainIILayout }
    \header {
    title = "II"
    composer = ##f
  } 
    \layout { 
      #(layout-set-staff-size 16)
    }
  }

  \score {
    { \modereMidi \mainIIMidi }
    \midi { 
      \context { \Score midiChannelMapping = #'instrument }
    }
  }

}