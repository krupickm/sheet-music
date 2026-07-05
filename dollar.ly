\version "2.24.0"

%% I Need a Dollar – Chorus 1, prvni kolecko (takty 5-6), prepis z tvého obrázku.
%% Cil: okoukat psaní NOT a POMLK. Vysky jsem cetl z obrazku, klidne si je proti
%% notam over/dolad – dulezita je tady syntaxe.

\header {
  title    = "I Need a Dollar — Chorus 1"
  tagline  = ##f
}

melody = \relative cis'' {
  \clef "treble_8"        % houslovy klic s 8 dole = zpev, znI o oktavu niz
  \key gis \minor         % 5 krizku (gis moll); kdyby mel tvuj list jinak, zmen tady
  \time 4/4
  \tempo "Chorus 1 (swung)"

  %% --- TAKT 5: "I need a dol-lar, dol-lar," -----------------------------
  %%  r8            = osminova POMLKA (predtaktovy nadech, nese ji zadny text)
  %%  dis8 dis e    = tri osminy (I / need / a)
  %%  fis8. e16     = TECKOVANA osmina + sestnactina  -> swingove "dol-lar"
  %%  dis8 cis8     = dve osminy (dol-lar)
  r8 gis, dis'8. gis,16 b16 gis16~gis8 fis16 gis16~gis8   |

  %% --- TAKT 6: "dol-lar is all I need."  + ctvrtova pomlka --------------
  %%  sest osmin (dol-lar is all I need)
  %%  r4            = ctvrtova POMLKA na konci fraze
  b16 b16 gis8 b16 cis8 dis16~dis4 r4           |
}

words = \lyricmode {
  %% pomlerky "--" spojuji slabiky jednoho slova (dol -- lar)
  %% POMLKY (r8, r4) automaticky slabiku nedostanou, proto ma text o 2 slabiky
  %% min nez je "udalosti" v taktu.
  I need a dol -- lar, dol -- lar, dol -- lar is all I need.
}

\score {
  <<
    \new Staff \new Voice = "solo" \melody
    \new Lyrics \lyricsto "solo" \words
  >>
  \layout { }
  \midi  { }
}
