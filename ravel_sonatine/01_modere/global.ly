\version "2.24.4"

\include "repeats.ly"

oneA = \markup { \concat { 1 \super a } }
twoA = \markup { \concat { 2 \super a } }

globalLayoutI = {

  \key fis \minor
  \time 2/4
  \tempo "Modéré "
  
  %1-3
  s2*3 |

  \tag #'layout \set Score.repeatCommands = #'(start-repeat)
  \tag #'unfold \bar ".|:"
  %4-11
  s2*8 |

  %12
  s2 |

  %13
  \tempo "a Tempo" s2 |

  %14-18
  s2*5 |

  %19
  s2 |

  %20
  \tempo "Un peu retenu" s2 |

  %21
  s2 |

  %22
  s2 |

  %23
  s4. \tempo "a Tempo" s8 |

  %24-25
  s2*2 |

  \tag #'layout \set Score.repeatCommands = #(list(list 'volta oneA))

  %26-28
  s2*3 |

  \tag #'layout \set Score.repeatCommands = #(list(list 'volta #f) list(list 'volta twoA) 'end-repeat)
  \tag #'unfold \bar ":|.:"

  \tag #'unfold { %literally just m4-m25

    %4-11
    s2*8 |

    %12
    s2 |

    %13
    \tempo "a Tempo" s2 |

    %14-18
    s2*5 |

    %19
    s2 |

    %20
    \tempo "Un peu retenu" s2 |

    %21
    s2 |

    %22
    s2 |

    %23
    s4. \tempo "a Tempo" s8 |

    %24-25
    s2*2 |

  }

  \tag #'unfold \bar ":|."

  %29
  s2 |

  \tag #'layout \set Score.repeatCommands = #'((volta #f))

  %30-42
  s2*13 |

  %43
  \tempo "a Tempo" s2

  %44-51
  s2*8

  %52
  \tempo "Animé" s2
  
  %53-58
  s2*6

  %59
  \tempo \markup { \concat { 1 \super "o" } "Tempo" }

  %60-70
  s2*11

  %71
  s2

  %71
  \section
  \key fis \major
  \tempo "a Tempo"
  s2

  %72-77
  s2*6

  %78
  \tempo "Un peu retenu"
  s2

  %79-81
  s2*3

  %82
  \tempo "a Tempo"
  s2

  %83-85
  s2*3

  %86
  s4. \tempo "Lent" s8

  %87
  s2 \fine

}

globalMidiI = {

  \time 2/4
  \tempo 4=66
  
  %1-3
  s8 s4.\p
  s8 s4.\<
  s4 s8\mp s8\pp |

  \globalMidiIRepeatI

  %26
  s8 s4.\p |

  %27
  s2\< |

  %28
  s8 \tempo 4=48 s8 \tempo 4=44 s8\mp \tempo 4=66 s8\pp

  \globalMidiIRepeatI

  %29
  s2 |
  
  %30-31
  s2
  s8 s4.\p |

  %32
  \tempo 4=54 s4
  \tempo 4=55 s4
  
  %33
  \tempo 4=56 s4
  \tempo 4=58 s4

  %34
  \tempo 4=56 s8
  \tempo 4=44 s8
  \tempo 4=63 s4\mf

  %35
  s2

  %36
  \tempo 4=66 s2

  %37
  \tempo 4=69 s2\f

  %38
  s4.. \tempo 4=57 s16

  %39
  s16 \tempo 4=66 s16 \tempo 4=69 s4.

  %40
  s4.. \tempo 4=57 s16

  %41
  \tempo 4=63 s4
  \tempo 4=60 s4

  %42
  \tempo 4=57 s4
  \tempo 4=51 s8
  \tempo 4=45 s16
  \tempo 4=24 s16

  %43
  \tempo 4=54 s2\pp

  %44-45
  s2*2

  %46
  \tempo 4=56 s4\< 
  \tempo 4=58 s4

  %47
  \tempo 4=60 s4
  \tempo 4=62 s8
  \tempo 4=54 s8

  %48
  \tempo 4=54 s4\mf\<
  \tempo 4=58 s4

  %49
  \tempo 4=62 s4
  \tempo 4=66 s4

  %50
  \tempo 4=70 s4
  \tempo 4=78 s4 

  %51
  \tempo 4=86 s4 
  \tempo 4=96 s4 

  %52
  \tempo 4=108 s2\f\<

  %53
  s2
  %54
  s2
  %55
  s2\ff
  %56
  s2\>

  %57
  \tempo 4=96 s8\f\>
  \tempo 4=88 s8
  \tempo 4=76 s8
  \tempo 4=65 s8

  %58
  \tempo 4=60 s8
  \tempo 4=55 s8
  \tempo 4=50 s8
  \tempo 4=45 s8

  %59
  \tempo 4=50 s16\mp
  \tempo 4=55 s16
  \tempo 4=60 s8
  \tempo 4=66 s4

  %60
  s8 s4.\<

  %61
  s4 s8\mf s8\pp

  %62
  s4. s8\<  |

  %63
  s4. s8\mf

  %64-66
  s2*3

  %67
  s4 s4\<

  %68
  s2

  %69
  s4\f s4\>

  %70
  \tempo 4=63 s16
  \tempo 4=57 s16
  \tempo 4=54 s16
  \tempo 4=51 s16
  \tempo 4=48 s16
  \tempo 4=42 s16
  \tempo 4=24 s8  

  %71
  \tempo 4=40 s8\p
  \tempo 4=54 s4.

  %72-75
  s2*4

  %76
  s4. \tempo 4=48 s8

  %77
  \tempo 4=36 s4\>
  \tempo 4=30 s8
  \tempo 4=18 s8

  %78
  \tempo 4=42 s2\ppp

  %79
  s2

  %80
  s4. \tempo 4=39 s8

  %81
  \tempo 4=36 s8
  \tempo 4=33 s8
  \tempo 4=15 s8
  \tempo 4=50 s8\pp

  %82-83
  \tempo 4=30 s4. \tempo 4=50 s8
  \tempo 4=30 s4. \tempo 4=42 s8

  %84
  \tempo 4=44 s4\< s4\p\>

  %85
  \tempo 4=30 s2\pp\>
  
  %86
  \tempo 4=24 s4.\ppp\> \tempo 4=18 s8\pppp

  %87
  s2


}