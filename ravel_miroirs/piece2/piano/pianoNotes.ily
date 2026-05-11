\version "2.26.0"

tU =
{
  \change Staff = "pianoUpper"
  \stemNeutral
}

tL =
{
  \change Staff = "pianoLower"
  \stemNeutral
}

tUS =
{
  \change Staff = "pianoUpper"
  \stemDown
}

tLS =
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