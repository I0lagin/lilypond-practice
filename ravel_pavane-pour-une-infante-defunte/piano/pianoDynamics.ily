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
  \once \override DynamicText.Y-offset = #1
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
  
}