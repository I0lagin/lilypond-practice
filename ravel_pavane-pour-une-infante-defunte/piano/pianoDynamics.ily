\version "2.24.4"

blank = {
  s1 |
  s1 |
  s1 |
}

mfTres = \tweak DynamicText.self-alignment-X #LEFT #(make-dynamic-script
						     (markup  #:dynamic "mf"
						      #:normal-text #:italic "très soutenu"))

\parallelMusic pianoDynamicsUpper,pianoDynamicsBetween,pianoDynamicsLower {

  %% 1
  s1 |
  s1\p |
  s1 |

  %% 2-5
  \repeat unfold 4 \blank

  %% 6
  s2. s4^\markup{\italic cédez} |
  s2. s4\mf |
  s1 |

  %%7
  s4 s2.^\> |
  s1 |
  s1 |

  %%8
  s1\! |
  s1\p |
  s1 |

  %%9
  \blank

  %%10
  s2 s2^\markup { \italic { un peu retenu } } |
  s2
  \once \override DynamicText.Y-offset = -2.5
  s2_\pp |
  s1 |

  %%11
  s1 |
  s8
  \once \override DynamicText.Y-offset = 1.2
  s4.^\f s2 |
  s1 |

  %%12
  s1 |
  s2 s8
  \once \override DynamicText.Y-offset = 2
  s4.^\p |
  s1 |

  %%13
  s1 |
  s1\pp |
  s1\sustainOn |

  %%14
  s1 |
  s1 |
  s1\sustainOn |

  %%15
  s1 |
  s1 |
  s1\sustainOn |

  %%16
  s1 |
  s1 |
  s1\sustainOn |

  %%17
  s2 s2^\< |
  s2 s2^\< |
  s1\sustainOn |

  %%18
  s1\! |
  \once \override DynamicText.Y-offset = #3
  \once \override DynamicText.X-offset = #-0.5
  s1\!\mfTres |
  s1 |

  %%19
  s2 |
  s2\> |
  s2 |

  %%20
  s1 |
  s1\ppp |
  s1\sustainOn |

  %%21
  s2^\> s2\! |
  s1 |
  s1 |

  %%22
  s1^\< |
  s1 |
  s1 |

  %%23
  s2^\> s2\! |
  s1 |
  s1 |

  %%24
  s1^\< |
  s1\pp\< |
  s1 |

  %%25
  s1\! |
  s4\! s2.\mf |
  s1 |

  %%26
  s2 s2^\markup \italic { un peu plus lent. } |
  s4\> s2\! s4\f |
  s1 |

  %%27
  s2 s4^\> s4\! |
  s1 |
  s2 s4_\> s4\! |

  %%28
  s1 |
  s1\p |
  s2\sustainOn s2\sustainOn |

  %%29
  s1 |
  s1 |
  s1\sustainOn |

  %%30%31%32
  \repeat unfold 3 \blank

  %%33
  s2 s8 s4.^\markup{\italic cédez} |
  s2 s8 s4.\mf |
  s1 |

  %%34
  s4 s2^\> s8. s16^\markup{\italic rapide} |
  s1 |
  s1 |

  %%35
  s1\! |
  \once \override DynamicText.Y-offset = 7 s1^\p |
  s1 |

  %%36
  s1 |
  s1 |
  s8 s8\sustainOn s2. |

  %%37
  s2 s2^\markup { \italic { un peu retenu } } |
  s2 \once \override DynamicText.Y-offset = 8 s2\pp |
  s1 |

  %%38
  s1 |
  s8 \once \override DynamicText.Y-offset = 8 s8^\ff s4 s2 |
  s1 |

  %%39
  s1 |
  s2.
  \once \override TextScript.X-offset = -1
  \once \override TextScript.Y-offset = 8
  \once \override TextScript.whiteout = 4
  s4^\markup{\italic \small { subitement très doux et très lié. }} |
  s1 |

  %%40
  s2^\< s2\!^\> |
  s1 |
  s1 |

  %%41
  s4 s8\! s8 s2 |
  s1 |
  s1 |

  %%42
  \tuplet 3/2 { s4^\< s8\! } s2.\! |
  s2 s8 s4\< s8\! |
  s4. s8\sustainOn s2 |

  %%43
  s2 s4. s8^\< |
  s4. s8\> s4.\! \once \override DynamicText.Y-offset = -2 s8_\pp |
  s1 |

  %%44
  s4. s8\! s2^\> |
  s1 |
  s1 |

  %%45
  s4 s4\! s2 |
  s1 |
  s4. s8\sustainOn s2 |
  
}