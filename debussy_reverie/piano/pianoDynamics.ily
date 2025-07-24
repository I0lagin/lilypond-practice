\version "2.24.4"

menoP = #(make-dynamic-script
  (markup #:normal-text #:italic "meno" #:dynamic "p")
)

ppEspress = #(make-dynamic-script
  (markup #:dynamic "pp" #:normal-text #:italic "espress.")
)

piuP = #(make-dynamic-script
  (markup #:normal-text #:italic "più" #:dynamic "p")
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

  %36-38
  \repeat unfold 3 \blank

  %39
  s1 |
  s1\pp |
  s1 |
  s1 |

  %40
  s1 |
  s1\< |
  s1 |
  s1\< |

  %41
  s1 |
  s1\sf\< |
  s1 |
  s8\sf s4.\ppp\< s2|

  %42
  s1 |
  s1 |
  s1 |
  s1 |

  %43
  s1 |
  s1\mf |
  s1 |
  s1\f |

  %44
  \blank

  %45
  s1 |
  s1-\markup {\italic "dim."} |
  s1 |
  s1\> |

  %46
  \blank

  %47
  s1 |
  s1\p-\markup { \halign #-2.5 \upright \bold "rit."} |
  s1 |
  s1\pp |

  %48-50
  \repeat unfold 3 \blank

  %51
  s1 |
  \once \override DynamicText.Y-offset = 1
  s1\p |
  s1 |
  s1 |

  %52
  \blank

  %53
  s1 |
  s2.\piuP s4\> |
  s1 |
  s1\> |

  %54
  s1 |
  s1\! |
  s1 |
  s1\ppp |

				%55
  s1 |
  s1\p |
  s1 |
  s1\pp |

				%56
  \blank

				%57
  s1 |
  \override DynamicText.self-alignment-X = 0
  s1\piuP |
  s1 |
  s1\ppp |

				%58
  \blank

				%59
  s1 |
  s1\pp|
  s1 |
  s1\ppp |

				%60-64
  \repeat unfold 5 \blank

				%65
  s1 |
  s2
  \override DynamicTextSpanner.style = #'none
  \once \override DynamicTextSpanner.whiteout= 4
  s2\cresc |
  s1 |
  s2 s2\< |

				%66
  \blank

				%67
  s1 |
  s1\mf |
  s1 |
  s1\f |

				%68
  \blank

				%69
  s1 |
  s1\p |
  s1 |
  s1\pp |
				%70
  \blank

				%71
  s1 |
  \once \override Staff.DynamicText.whiteout = 3
  s1\piuP |
  s1 |
  s1\pp |

				%72-73
  \repeat unfold 2 \blank

				%74
  s1 |
  \override DynamicText.self-alignment-X = -1
  s1\pp |
  s1 |
  s1\ppp |

				%75-83
  \repeat unfold 8 \blank
  s2. |
  s2. |
  s2. |
  s2. |

				%84
  s1 |
  s1\menoP |
  s1 |
  s1\ppp |

				%85
  s1 |
  s1\< |
  s1 |
  s1\< |

				%86
  s1 |
  \override DynamicText.self-alignment-X = 0
  s1\p |
  s1 |
  s1\pp |

				%87
  s1 |
  s1\< |
  s1 |
  s1\< |

				%88
  s1 |
  s1\p |
  s1 |
  s1\mp |

				%89
  s1 |
  s1\< |
  s1 |
  s1\< |

				%90
  s1 |
  s1\! |
  s1 |
  s1 |

				%91
  s1 |
  s2 s2\> |
  s1 |
  s2 s2\f\> |

				%92
  s1 |
  s1\p |
  s1 |
  s1\pp |

				%93-95
  \repeat unfold 3 \blank

				%96
  s1 |
  s1\piuP |
  s1 |
  s1\ppp |

				%97
  \blank

				%98
  s1 |
  \override DynamicText.self-alignment-X = -1
  s2.\pp
  \once \override Score.MetronomeMark.direction = #0
  \once \override Score.MetronomeMark.Y-offset = #-6
  \tempo\markup { \whiteout \pad-markup #0.5 "rit. e perdendosi" }
  s4 |
  s1 |
  s1\pppp |

				%99
  \blank

				%100
  s1 |
  s1 |
  s1 |
  s1\> |

				%101
  s1 |
  s1 |
  s1 |
  s1\ppppp |
  
}