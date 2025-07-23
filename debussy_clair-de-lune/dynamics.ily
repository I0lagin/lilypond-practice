\version "2.24.4"

blank = { s1*9/8 }
blankAll = {
  \blank |
  \blank |
  \blank |
  \blank |
}

ppMorendo = #(make-dynamic-script
  (markup #:dynamic "pp" #:normal-text #:italic "morendo jusqu'à la fin")
)

\parallelMusic pianoDynamicsUpper,pianoDynamicsBetween,pianoDynamicsLower,pianoDynamicsMidi {
  %1
  \blank |
  s4 \pp s8-\markup { \upright "con sordina" } s2. |
  \blank |
  \blank \ppp |

	 			%2-12
  \repeat unfold 11 \blankAll

				%13
  \blank |
  s8 s4\< s2.\! |
  \blank |
  s8 s4\ppp\< s2.\p |

				%14
  \blank |
  s4. \tuplet 2/3 { s8 s8\> } s4. |
  \blank |
  s4. \tuplet 2/3 { s8 s8\> } s4. |

				%15
  \blank |
  \blank\pp |
  \blank |
  s1*9/8\ppp\< |

				%16-18
  \blankAll \blankAll \blankAll

				%19
  \blank^\markup{ \italic "   peu    à    peu    cresc.    et    animé" } |
  \blank |
  \blank |
  \blank |

				%20-23
  \repeat unfold 4 \blankAll
				%24
  \blank |
  \blank |
  \blank |
  s1*9/8\ff |

				%25
  \blank |
  \blank-\markup{ \italic "   dim. molto " } |
  \blank |
  \blank\p\> |

				%26
  \blank |
  \blank |
  \blank |
  s2. s4.\pppp |

				%27
  \blank |
  \blank\pp |
  \blank |
  \blank\ppp |

				%28
  \blankAll

				%29
  \blank |
  \blank\< |
  \blank |
  \blank\p\< |

				%30
  \blank |
  \blank\! |
  \blank |
  \blank\p |

				%31
  \blank |
  s2.\p s4\< s8\! |
  \blank |
  \blank\ppp\< |

				%32
  \blank |
  s2.\p s4\< s8\! |
  \blank |
  \blank |

				%33
  \blank |
  \blank |
  \blank |
  \blank\mf |
				%34
  \blank |
  \blank |
  \blank |
  s2.\> s4.\ppp |

				%35
  \blank^\markup{ \italic cresc. } |
  \blank |
  \blank |
  \blank\pp\< |

				%36
  \blankAll

				%37
  \blank |
  \blank^\markup{ \italic "     più cresc" } |
  \blank |
  \blank\mp\< |

				%38-40
  \repeat unfold 3 \blankAll

				%41
  \blank |
  \blank\f |
  \blank |
  \blank\ff |

				%42
  \blank |
  \blank^\markup{ \italic "dim." } |
  \blank |
  \blank\> |

				%43
  \blank |
  \blank_\pp |
  \blank |
  \blank\ppp\< |

				%44
  \blankAll

				%45
  \blank |
  \blank |
  \blank |
  \blank \p\< |

				%46
  \blankAll

				%47
  \blank |
  \blank |
  \blank |
  \blank \mf\< |

				%48
  \blankAll

				%49
  \blank |
  \blank |
  \blank |
  \blank \f\> |

				%50
  \blankAll
  
  				%51
  \blank |
  \blank\ppp |
  \blank |
  \blank\pppp |

				%52-58
  \repeat unfold 7 \blankAll

				%59
  \blank |
  \blank\pp |
  \blank |
  \blank\ppp |

				%60-62
  \repeat unfold 3 \blankAll

  %63
  \blank |
  \blank |
  \blank |
  \blank\pp\< |

				%64
  \blankAll

				%65
  \blank |
  \blank |
  \blank |
  s4.\mf s2.\> |

				%66
  \override DynamicText.self-alignment-X = -1
  \blank^\ppMorendo |
  \blank |
  \blank |
  \blank\p |

				%67
  \blankAll
  
				%68
  \blank |
  \blank |
  \blank |
  \blank\pp |

				%69
  \blankAll
				%70
  \blank |
  \blank |
  \blank |
  \blank\> |

				%71
  \blank |
  \blank |
  \blank |
  \blank\ppp\> |

				%72
  \blank |
  \blank |
  \blank |
  \blank\ppppp |

  
  
}
