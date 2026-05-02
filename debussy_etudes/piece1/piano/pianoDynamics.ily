\version "2.24.4"

menoP = #(make-dynamic-script
  (markup #:normal-text #:bold #:italic "meno" #:dynamic "p")
)

ppEspress = #(make-dynamic-script
  (markup #:dynamic "pp" #:normal-text #:bold #:italic "espress.")
)

piuP = #(make-dynamic-script
  (markup #:normal-text #:bold #:italic "più" #:dynamic "p")
)

piuPP = #(make-dynamic-script
  (markup #:normal-text #:bold #:italic "più" #:dynamic "pp")
)

pSempre = #(make-dynamic-script
  (markup #:dynamic "p" #:normal-text #:bold #:italic "sempre" )
)

ppSempre = #(make-dynamic-script
  (markup #:dynamic "pp" #:normal-text #:bold #:italic "sempre" )
)

pScherz = #(make-dynamic-script
  (markup #:dynamic "p" #:normal-text #:bold #:italic "scherz." )
)

blank = {
  s1 |
  s1 |
  s1 |
  s1 |
}

\parallelMusic pianoDynamicsUpper,pianoDynamicsBetween,pianoDynamicsLower,pianoDynamics {

  %%1
  s1 |
  s1_\p |
  s1^\markup { \italic ben legato } |
  s1\pp |

  %%2--%4
  \repeat unfold 3 \blank

  %%5
  \override TextSpanner.bound-details.left.text = \markup { \italic accelerando }
  s1\startTextSpan |
  s1 |
  s1 |
  s1\< |

  %%6
  \after 4. \stopTextSpan s2 |
  s2\< |
  s2 |
  s2 |

  %%7--%10
  s4.*2 s4.*2^\markup { \italic { molto dim. } } |
  %% \once \override DynamicText.self-alignment-X = 2
  s8._\mf s8.\> \repeat unfold 3 { s8.\! s8.\> }  |
  s4.*4 |
  s4.*2\f s4.*2\> |

  %%11--%14
  s1 s2. \grace{ s8^\markup { \italic "brusquement" } } s4 s1 s2. \grace{ s8^\markup { \italic "simile" } } s4 |
  s1\p s2. \grace{ s8\< } s4 s1\p s2. \grace{ s8\< } s4 |
  s1*4 |
  s1\pp s2 s8 s4\< s8\mf
  s1\pp s2 s8 s4\< s8 |

  %%15--%16
  s1 s1 |
  s1\mf\cresc s2 s2\!\> |
  s1 s1 |
  s1\f s2 s2\ff\> |

  %%17--%20
  s4.*4 |
  %% \once \override DynamicText.self-alignment-X = 3
  s8.\p s8.\> s4.\! s4. s4. |
  s4.*4 |
  \repeat unfold 4 { s8.\pp s8\> s16\ppp } |

  %%21--%27
  s4.*7 |
  \override TextSpanner.bound-details.left.text = \markup { \italic "poco" }
  \override TextSpanner.bound-details.left-broken.text = \markup { \italic "a poco cresc." }
  s8.\p s8.\startTextSpan s4. s4. s8.\stopTextSpan s8.\<
  s4.\! s8. s8.\< s4.\! |
  s4.*7 |
  s4.\pp\<
  s4.
  s4.
  s8.\mf s8.\<
  s4.\f
  s8.\mf s8.\<
  s4.\f\<|

  %%28--%29
  s2.*2 |
  s8.\f\< s8 s16\! s8. s8.\> s8.\f\< s8 s16\! s4. |
  s2.*2 |
  s4.\ff\< s8.\fff s16.\> s16.\mf s4.\ff\< s4.\fff |

  %%30--%31
  s2. s2.^\markup { \italic { "dim. molto" } } |
  s2.*2 |
  s2.*2 |
  s2. s2.\> |

  %%32
  s2. |
  s8\p s16\< s8.\! s8 s16\> s8.\! |
  s2. |
  s8\pp s16\< s8.\! s8 s16\> s8.\! |

  %%33
  s2. |
  s8^\markup { \italic "rinforzando" } s16 s8. s8 s16\< s8.\! |
  s2. |
  s8\mf s16\< s8.\! s8 s16\> s8.\pp |

  %%34
  s2. |
  s8\p s16 s8. s8\> s16 s8. |
  s2. |
  s8\pp s16 s8. s8\> s16 s8.\! |

  %%35--%36
  s2.*2 |
  %% \once \override DynamicText.self-alignment-X = 3
  s4.\p^\markup{ \italic "leggiero legato" } s4.\< s4.\!\> s4.\! |
  s2.*2 |
  s4.\pp s4.\< s4.\!\> s4.\! |

  %%37--%38
  s2.*2 |
  \once \override DynamicText.self-alignment-X = -1
  % \once \override DynamicText.whiteout = 2
  s2.\piuP s2.\pp |
  s2.*2 |
  s2.\pp s2.\ppp |

  %%39--%41
  s2.*3 |
  s4.\p s8. s8.\<
  s4.\p s8. s8\< s16\!
  s2.\cresc |
  s2.*3 |
  s4.\pp s8. s8.\<
  s4.\p s8. s8.\<
  s2.\mf\cresc |

  %%42--%44
  s2.*3 |
  s2.\f s2.\< s4.\f\< s8.\sf s8.\dim |
  s2.*3 |
  s2.\ff s2.\mf\< s4.\ff\< s8.\sf s8.\dim |

  %%45--%47
  s2.*3 |
  s2.\f s16\< s16*4 s16\! s16 s16\< s16*4 s8.\f\< s8 s16\! s4.\dim |
  s2.*3 |
  s2.\ff s2.\mf\< s4.\ff\< s8.\fff s8.\dim |

  %%48--%51
  s2.*4 |
  \once \override DynamicText.self-alignment-X = -2
  s2.\pp-\markup{ \italic "leggierissimo" } s2. s2.\pp-\markup { \italic "simile" } s2. |
  s2.*4 |
  s2.\ppp s2.*3 |

  % 52--55
  s2.*4
  |
  s4. s8. s16.\< s16.\!
  s4. s8. s16.\> s16.\!
  s8. s8.\< s4.
  s4.\!\<_\markup{ \italic "rinf." } s4.\!\>_\markup{ \italic "molto" }
  |
  s4._\> s4.\!
  s4._\> s4.\!
  s2.*2
  |
  s2.*2
  s4. s4.\>
  s4.\ppp\< s4.\f\> |

  % 56--58
  s2.*3 |
  s2.\pp s2. s8. s8.\< s4. |
  \repeat unfold 3 { s4._\> s4.\! } |
  s2.\ppp s2.*2 |

  % 59--60
  s2.*2 |
  s2.\p s8. s8.\< s8. s8.\! |
  s2.*2 |
  s2.\< s2.\mf |

  % 61--64
  s2.*4 |
  s8. s16.\< s16.\! s8. s8.\p
  s2.\< s2.\mf s2.
  |
  s2.*4 |
  s2.\< s2. s2.\ff s2. |

  % 65--68
  s2.*2
  s8. s8 s16_\< s4.\!
  s2.|
  s8.\p s8.^\markup { \italic { "cresc. molto" } } s4. s2.
  s2.\f
  s2.\f\< |
  s2.*4 | 
  s2.\p\< s2. s2.\f\< s2.\ff\< | 

  %69--70
  s2.*2 |
  s2.\! s8. s8.\> s4. |
  s2.*2 |
  s2.\fff s2.\> |

  %71--73
  \repeat unfold 2 { s8 s16^\< s16\! s8 } 
  s2.
  \repeat unfold 2 { s8 s16^\< s16\! s8 } |
  s2.\p s2.\pp s2.\p |
  s2.*3 |
  s4.\p s4.\mp s2.\ppp s4.\p s4.\mp |

  %74--75
  s2.*2 |
  s2.\piuP s2.\ppSempre |
  s2.*2 |
  s2.\p\> s2.\ppp |
  
  %76--79
  s2.*4 |
  s8. \once \override DynamicText.self-alignment-X = -1
  s8.\pScherz s16. s16.\< s8.\!
  s2.
  s8. s8.\> s4.
  \once \override DynamicText.self-alignment-X = -1
  s2.\piuPP |
  s2.*4 |
  s8. s8.\pp\< s4.
  s2.\p
  s2.\>
  s2.\ppp |

  %80--83
  s2.*4 |
  \once \override DynamicText.self-alignment-X = -1
  s8.\pp s4.\< s8.\!
  s8. s4.\< s8.\!
  s8. s8.\> s4.
  \once \override DynamicText.self-alignment-X = -1
  s2.\piuPP |
  s2.*4 |
  s8.\ppp s4.\< s8.
  s2.\pp\<
  s2.\p\>
  s2.\ppp
  
}