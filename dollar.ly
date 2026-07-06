\version "2.24.0"

\header {
  title    = "I Need a Dollar"
  tagline  = ##f
}

melody = \relative cis''' {
  \clef "treble"        % houslovy klic s 8 dole = zpev, znI o oktavu niz
  \key gis \minor         % 5 krizku (gis moll); kdyby mel tvuj list jinak, zmen tady
  \time 4/4

  r8 gis, dis'8. gis,16 b16 gis16~gis8 fis16 gis16~gis8   |
  b16 b16 gis8 b16 cis8 dis16~dis4 r4           |
}

harmonies = \chordmode {
  \repeat volta 2 {
    gis2:m fis2 | cis1:m
  }
}

words = \lyricmode {
  %% pomlcky "--" spojuji slabiky jednoho slova (dol -- lar)
  %% POMLKY (r8, r4) automaticky slabiku nedostanou, proto ma text o 2 slabiky
  %% min nez je "udalosti" v taktu.
  I need a dol -- lar, dol -- lar  dol -- lar is all I need.
}

\score {
  <<
    \new ChordNames \harmonies
    \new Staff \new Voice = "solo" \melody
    \new Lyrics \lyricsto "solo" \words
  >>
  \layout { }
  \midi  { }
}

\score {
  <<
    \new ChordNames \chordmode {
    gis2:m fis2 | cis2..:m dis8:m | 
    gis2:m fis2 | cis2..:m dis8:m | 
    dis2:m gis2:m | cis1:m |
    dis2:m gis2:m | cis1:m |
    dis2:m gis2:m | cis1:m | cis2..:m dis8:m |
    gis2:m fis2 | cis1:m
    }

    \new Staff \with { instrumentName = "Přechod" } 
    \new Voice = "pno"  \relative gis' {
    \clef "treble"
    \key gis \minor
    \time 4/4
 
    <gis b dis>8 q q q  <fis ais cis>8 q q q |
     <gis cis e>8 q q q q q r8 <fis ais dis>8 |
    
    <gis b dis>8 q q q  <fis ais cis>8 q q q |
     <gis cis e>8 q q q q q r8 <fis ais dis>8 |
    
    <fis ais dis>2  <gis b dis>2 |  <gis cis e>1  |
    <fis ais dis>2  <gis b dis>2 |  <gis cis e>1  |
  <fis ais dis>2  <gis b dis>2 |  <gis cis e>1  | q2. r8 <fis ais dis>8  |

  <gis b dis>8 q q q  <fis ais cis>8 q q q |
     <gis cis e>8 q q q q q q q
    }

    \new Lyrics \lyricsto "pno"  {
  %% pomlcky "--" spojuji slabiky jednoho slova (dol -- lar)
  %% POMLKY (r8, r4) automaticky slabiku nedostanou, proto ma text o 2 slabiky
  %% min nez je "udalosti" v taktu.
  loo -- king for some bo -- dy come and
  help me carry this load - -

  Well I need a dol -- lar, dol -- lar,
  dol -- lar is what I need -    
  "Well I dont" "know if I'" "m walking on solid ground"   
  "Cause" "everything around me" "is falling down"
  "And all I" "want is for" "someone to help me"
  - - 
  -  I had a   job but the - boss man let me go, he said -  


}

  >>
  \layout { }
  \midi  { }
}

\score {
  <<
    \new ChordNames \chordmode {
    gis2:m fis2 | cis1:m | 
    }

    \new Staff \with { instrumentName = "Outro" }
    \new Voice = "pno" \relative gis' {
    \clef "treble"
    \key gis \minor
    \time 4/4
 
    r8 dis8 fis8 dis8 fis gis fis dis| 
     fis16 gis8. fis16 gis8. r2|
    }

  



  >>
  \layout { }
  \midi  { }
}
