\version "2.24.4"

menoP = #(make-dynamic-script
  (markup #:normal-text #:italic "meno" #:dynamic "p")
)

ppEspress = #(make-dynamic-script
  (markup #:dynamic "pp" #:normal-text #:italic "espress.")
)

blank = {
  s1 |
  s1 |
  s1 |
  s1 |
}

\parallelMusic pianoDynamicsUpper,pianoDynamicsBetween,pianoDynamicsLower,pianoDynamicsMidi {

  %1
  s1 |
  \once \override DynamicText.extra-offset = #'(0 . -1)
  s1\pp |
  s1 |
  s1\ppp |

  %2-10
  \repeat unfold 9 \blank

  %11
  s1 |
  \override DynamicText.self-alignment-X = -1
  s1\menoP |
  s1 |
  s1\pp |

  %12
  \blank

  %13
  s1 |
  s1\mf |
  s1 |
  s1\f |

  %14
  \blank

  %15
  s1 |
  s1-\markup {\italic "dim."} |
  s1 |
  s1\> |

  %16-18
  \repeat unfold 3 \blank

  %19
  s1 |
  s1\pp |
  s1 |
  s1\ppp |

  %20-21
  \blank \blank

  %22
  s1 |
  s1-\markup { \italic "poco cresc." } |
  s1 |
  s1\< |

  %23-24
  \blank \blank

  %25
  s1 |
  s1-\markup { \italic "più cresc."} |
  s1 |
  s1 |

  %26
  \blank

  %27
  s1 |
  s1\f |
  s1 |
  s2.\ff s4\> |

  %28
  s1 |
  s1\p |
  s1 |
  s2.\pp s4\< |

  %29
  s1 |
  s1\f |
  s1 |
  s2.\ff s4\> |

  %30
  s1 |
  s1\p |
  s1 |
  s1\pp |

  %31
  s1 |
  s1-\markup {\italic "dim."} |
  s1 |
  s1\> |

  %32-34
  \blank \blank \blank

  %35
  s1 |
  s1\ppEspress |
  s1 |
  s1\ppp |

}