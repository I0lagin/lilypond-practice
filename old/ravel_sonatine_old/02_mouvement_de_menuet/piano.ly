\version "2.24.4"

\parallelMusic pianoIIUpper,pianoIILower,pianoIIPedal {
  
  %1 3/8 4:38
  <<
    { des''8^( aes'4) } \\
    { < f, des' >8-._( < aes des >-. q-.) }
  >> |
  < des' aes' >8-._( < ees bes' >-. < f c' >-.) |
  s8\sustainOn s8\sustainTap s8\sustainTap |

  %2
  <<
    { des16^([ ges aes8.)] des16->~^( } \\
    { < aes, des >8-._( q-. q-.) }
  >> |
  < ges bes >8-._( < f c' >-. < ees bes' >-.) |
  s8\sustainTap s8\sustainTap s8\sustainTap |

  %3
  <<
    { \diveight des'8[ c16 des bes c] } \\
    { < des, f >8-._( < c f >-. < bes f' >-.) } 
  >> |
  < des f aes >8-._( < c f aes >-. < bes f' aes >-.) |
    s8\sustainTap s8\sustainTap s8\sustainTap |

  %4
  <<
    { < f c' f >8) < aes ees' aes >4-> } \\
    { }
  >> |
  \clef bass <<
    { < f c' ees >8 < aes c ees >4 } \\
    { r4 f,8-_ }
  >> |
  s8\sustainTap s4\sustainTap |


}

\parallelMusic pianoIIDynamicsUpper,pianoIIDynamicsBetween,pianoIIDynamicsLower {
  
  %1 3/8
  s4. |
  s4.\p |
  s4. |

  %2
  s4. |
  s4. |
  s4. |

}