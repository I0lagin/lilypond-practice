\version "2.24.4"

toUpper =
{
  \change Staff = "pianoUpper"
  \stemNeutral
}

toLower =
{
  \change Staff = "pianoLower"
  \stemNeutral
}

toUpperStem =
{
  \change Staff = "pianoUpper"
  \stemDown
}

toLowerStem =
{
  \change Staff = "pianoLower"
  \stemUp
}

sustainTap = \sustainOff\sustainOn

\parallelMusic pianoUpper,pianoLower,pianoPedal
{
  
  %%1
  s1 |
  s1 |
  s1 |

}

