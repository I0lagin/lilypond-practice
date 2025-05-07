\version "2.24.4"

\parallelMusic pianoUpper,pianoLower,pianoPedal {
  
  %1
  \omit TupletNumber
  < a'' e' >8( < gis cis >~ \tuplet 3/2 { q8 < cis, gis' > < e fis >) } |
  \omit TupletNumber
  \tuplet 12/8 { fis32( cis' e a cis e a e cis a e cis) }
  \tuplet 12/8 { fis,32( cis' e a e cis fis, cis' e a e cis) } |
  s2\unaCorda\sustainOn |

  %2
  < a e' >8( < gis cis >~ \tuplet 3/2 { q8 < cis, gis' > < e fis >) } |
  \tuplet 12/8 { fis,32( cis' e a cis e a e cis a e cis) }
  \tuplet 12/8 { fis,32( cis' e a e cis fis, cis' e a e cis) } |
  s2\sustainTap |

  \mBreak % breaks could be in globalLayout, but for solo piano it can be here

  %3
  < a e' >8( < gis cis >~ \tuplet 3/2 { q8 < cis, gis' > < e fis >) } |
  \tuplet 12/8 { fis,32( cis' e a cis e a e cis a e cis) }
  \tuplet 12/8 { fis,32( cis' e a e cis fis, cis' e a e cis) } |
  s2\sustainTap |

  %4
  <<
    { \omit TupletNumber \stemDown < a e' >8( < gis_~ cis^~ > \stemUp \tuplet 3/2 { q8 < cis, gis' > < e fis >) } } \\
    {
      \omit TupletNumber \omit TupletBracket
      \toLower \tuplet 12/8 {
        s32*3
        \shape #'((0.6 . 7) (3 . 8.3) (0 . -5.7) (-0.6 . -3)) Slur
        gis,4^(->_\markup { \italic "en dehors" } s32
      }
      \toUpper \tuplet 3/1 { cis4)->^~ \once \hideNotes cis4_( s4 }
    }
  >> |
  \tuplet 12/8 { 
    \shape #'((0 . 0) (2 . -1) (2 . -1) (0 . -1)) Slur    
    fis,32( cis' e gis cis e a e cis a e cis)
  }
  \tuplet 12/8 { fis,32( cis' e a e cis fis, cis' e a e cis) } |
  s2\sustainTap |

  %mBreak in middle of m5

  %5
  <<
    { 
      < a' e' >8( < gis_~ cis^~ >
      \mBreak
      \tuplet 3/2 { q8 < cis, gis' > < e fis >) }
    } \\
    { cis4) \tuplet 3/2 { s8 r4 } }
  >> |
  \tuplet 12/8 { fis,32( cis' e a cis e a e cis a e cis }
  \tuplet 12/8 { fis,32 cis' e a e cis fis, cis' e a e cis) } |
  s2\sustainTap |

  %6
  <<
    { \omit TupletNumber \stemDown < a' e' >8( < gis_~ cis^~ > \stemUp \tuplet 3/2 { q8 < cis, gis' > < e fis >) } } \\
    {
      \omit TupletNumber \omit TupletBracket
      \toLower \tuplet 12/8 {
        s32*3
        \shape #'((0.6 . 7) (3 . 8.3) (0 . -5.7) (-0.6 . -3)) Slur
        gis,4^(-> s32
      }
      \toUpper \tuplet 3/1 { cis4)->^~ \once \hideNotes cis4_( s4 }
    }
  >> |
  \tuplet 12/8 { fis,32( cis' e gis cis e a e cis a e cis}
  \tuplet 12/8 { fis,32 cis' e a e cis fis, cis' e a e cis) } |
  s2\sustainTap |

  %7
  <<
    { < a' e' >8( < gis_~ cis^~ > \tuplet 3/2 { q8 < cis, gis' > < e fis >) } } \\
    { cis4) \tuplet 3/2 { s8 r4 } }
  >> |
  \tuplet 12/8 { fis,32( cis' e a cis e a e cis a e cis }
  \tuplet 12/8 { fis,32 cis' e a e cis fis, cis' e a e cis) } |
  s2\sustainTap |

}

