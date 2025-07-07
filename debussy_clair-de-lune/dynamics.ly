\version "2.24.4"

blank = { s1*9/8 }
blankAll = {
  \blank |
  \blank |
  \blank |
  \blank |
}

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
  s8 s4\< s2.\! |

				%14
  \blank |
  s4. \tuplet 2/3 { s8 s8\> } s4. |
  \blank |
  s4. \tuplet 2/3 { s8 s8\> } s4. |

				%15
  \blank |
  \blank \pp |
  \blank |
  \blank \ppp |

				%16-18
  \blankAll \blankAll \blankAll

				%19
  \blank^\markup{ \italic "   peu    à    peu    cresc.    et    animé" } |
  \blank |
  \blank |
  \blank |

				%20-24
  \repeat unfold 5 \blankAll

				%25
  \blank |
  \blank-\markup{ \italic "   dim.       molto " } |
  \blank |
  \blank\> |

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
  \blank |

				%30
  \blank |
  \blank\! |
  \blank |
  \blank |

				%31
  \blank |
  s2.\p s4\< s8\! |
  \blank |
  \blank |

				%32
  \blank |
  s2.\p s4\< s8\! |
  \blank |
  \blank |

				%33-34
  \repeat unfold 2 \blankAll

				%35
  \blank^\markup{ \italic cresc. } |
  \blank |
  \blank |
  \blank |

				%36
  \blankAll

				%37
  \blank |
  \blank-\markup{ \italic "     più cresc" } |
  \blank |
  \blank |
  
}
