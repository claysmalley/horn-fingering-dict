\version "2.22.1"

#(set-default-paper-size "letter")

date = #(strftime "%Y–%m–%d" (localtime (current-time)))
\header {
  tagline = \markup \concat {
    \italic "CC0, no rights reserved · last updated "
    \italic \date
    " · github.com/claysmalley/horn-fingering-dict"
  }
  title = "Double Horn Fingering Dictionary"
  composer = \markup \italic "Clay Smalley"
}
\paper {
  indent = 0
  scoreTitleMarkup = \markup {
    \override #`(direction . ,UP)
    \dir-column {
      \small \override #'(baseline-skip . 2.5)
      \fromproperty #'header:subpiece
      \bold \fontsize #1
      \fromproperty #'header:piece
    }
  }
}

centermarkup = {
  \once \override TextScript.self-alignment-X = #CENTER
  \once \override TextScript.X-offset = #(lambda (g)
  (+ (ly:self-alignment-interface::centered-on-x-parent g)
  (ly:self-alignment-interface::x-aligned-on-self g)))
}

fingerT = \markup \abs-fontsize #8 \musicglyph "arrowheads.open.11"
fingerL = \markup \abs-fontsize #8 \musicglyph "arrowheads.open.1M1"
fingerO = \markup \abs-fontsize #6 \slashed-digit #0
fingerB = \markup \abs-fontsize #6 \finger 2
fingerA = \markup \abs-fontsize #6 \finger 1
fingerAB = \markup \abs-fontsize #6 \finger 12
fingerBC = \markup \abs-fontsize #6 \finger 23
fingerAC = \markup \abs-fontsize #6 \finger 13
fingerABC = \markup \abs-fontsize #6 \finger 123
fingerTO = \markup
\override #`(direction . ,UP)
\override #'(baseline-skip . 2.0)
\dir-column {
  \general-align #X #CENTER \fingerO
  \general-align #X #CENTER \fingerT
}
fingerTB = \markup
\override #`(direction . ,UP)
\override #'(baseline-skip . 2.0)
\dir-column {
  \general-align #X #CENTER \fingerB
  \general-align #X #CENTER \fingerT
}
fingerTA = \markup
\override #`(direction . ,UP)
\override #'(baseline-skip . 2.0)
\dir-column {
  \general-align #X #CENTER \fingerA
  \general-align #X #CENTER \fingerT
}
fingerTAB = \markup
\override #`(direction . ,UP)
\override #'(baseline-skip . 2.0)
\dir-column {
  \general-align #X #CENTER \fingerAB
  \general-align #X #CENTER \fingerT
}
fingerTBC = \markup
\override #`(direction . ,UP)
\override #'(baseline-skip . 2.0)
\dir-column {
  \general-align #X #CENTER \fingerBC
  \general-align #X #CENTER \fingerT
}
fingerTAC = \markup
\override #`(direction . ,UP)
\override #'(baseline-skip . 2.0)
\dir-column {
  \general-align #X #CENTER \fingerAC
  \general-align #X #CENTER \fingerT
}
fingerTABC = \markup
\override #`(direction . ,UP)
\override #'(baseline-skip . 2.0)
\dir-column {
  \general-align #X #CENTER \fingerABC
  \general-align #X #CENTER \fingerT
}
fingerLO = \markup
\override #'(baseline-skip . 0.9)
\column {
  \general-align #X #CENTER \fingerO
  \general-align #X #CENTER \fingerL
}
fingerLB = \markup
\override #'(baseline-skip . 0.9)
\column {
  \general-align #X #CENTER \fingerB
  \general-align #X #CENTER \fingerL
}
fingerLA = \markup
\override #'(baseline-skip . 0.9)
\column {
  \general-align #X #CENTER \fingerA
  \general-align #X #CENTER \fingerL
}
fingerLAB = \markup
\override #'(baseline-skip . 0.9)
\column {
  \general-align #X #CENTER \fingerAB
  \general-align #X #CENTER \fingerL
}
fingerLBC = \markup
\override #'(baseline-skip . 0.9)
\column {
  \general-align #X #CENTER \fingerBC
  \general-align #X #CENTER \fingerL
}
fingerLAC = \markup
\override #'(baseline-skip . 0.9)
\column {
  \general-align #X #CENTER \fingerAC
  \general-align #X #CENTER \fingerL
}
fingerLABC = \markup
\override #'(baseline-skip . 0.9)
\column {
  \general-align #X #CENTER \fingerABC
  \general-align #X #CENTER \fingerL
}

tuningZero = \markup
\bold
\abs-fontsize #9
"="
tuningSharpFive = \markup
\bold
\abs-fontsize #9
\concat {
  \super
  \sharp
  ".05"
}
tuningSharpTen = \markup
\bold
\abs-fontsize #9
\concat {
  \super
  \sharp
  ".10"
}
tuningSharpFifteen = \markup
\bold
\abs-fontsize #9
\concat {
  \super
  \sharp
  ".15"
}
tuningSharpTwenty = \markup
\bold
\abs-fontsize #9
\concat {
  \super
  \sharp
  ".20"
}
tuningSharpForty = \markup
\bold
\abs-fontsize #9
\concat {
  \super
  \sharp
  ".40"
}
tuningFlatFive = \markup
\bold
\abs-fontsize #9
\concat {
  \super
  \flat
  ".05"
}
tuningFlatTen = \markup
\bold
\abs-fontsize #9
\concat {
  \super
  \flat
  ".10"
}
tuningFlatFifteen = \markup
\bold
\abs-fontsize #9
\concat {
  \super
  \flat
  ".15"
}
tuningFlatTwenty = \markup
\bold
\abs-fontsize #9
\concat {
  \super
  \flat
  ".20"
}
tuningFlatThirty = \markup
\bold
\abs-fontsize #9
\concat {
  \super
  \flat
  ".30"
}
tuningFlatFifty = \markup
\bold
\abs-fontsize #9
\concat {
  \super
  \flat
  ".50"
}

\markup \wordwrap {
  In this reference, partial numbers are listed to the right of each pitch,
  and deviation from the written pitch (in twelve–tone equal temperament) is shown below, rounded to the nearest 5 cents.
  Deviation may vary based on horn construction, as well as the player’s own preferences and anatomy.
}
\markup \null
\markup \wordwrap {
  Fingerings for each pitch are arranged from shortest to longest tubing length.
  Fingerings \fingerTAC and \fingerLAC are assigned a bias of 10 cents sharp,
  and likewise, \fingerTABC and \fingerLABC are biased 20 cents sharp.
  Uncommon fingerings are shown in black.
}
\score {
  \layout {
    #(layout-set-staff-size 20)
    \override Lyrics.LyricText.font-series = #'bold
    \context {
      \Score
      \omit BarNumber
    }
  }
  <<
    \new PianoStaff \with { \remove "Time_signature_engraver" }
    <<
      \new Staff
      <<
        \new Voice = "fingerings" \relative c'' {
          \accidentalStyle Score.forget
          \set Score.timing = ##f
          \omit Staff.TimeSignature
          \override Stem.length = 0
          \stemUp
          \set fingeringOrientations = #'(right)
          \override Fingering.whiteout = ##t
          \override Fingering.whiteout-style = #'rounded-box

          \clef treble
          <f-8 f,-4>2
          <f-9>4*2
          <f-10 f,-5>4*2
          \bar "!"
          <f-12 f,-6>2
          <f-14 f,-7>4*2
          <f-15>4*2
          \bar "|"

          <e'-15>4*2
          <e-16>4*2
          <e,-9>4*2
          <e-10 e,-5>4*2
          \bar "!"
          <e-10 e,-5>2
          <e-12 e,-6>2
          <e-14 e,-7>4*2
          \bar "|"

          <ees'-15>4*2
          <ees-16>4*2
          <ees,-9>4*2
          <ees-10 ees,-5>4*2
          \bar "!"
          <ees-10 ees,-5>2
          <ees-12 ees,-6>2
          \bar "|"
          \break

          <d'-15>4*2
          <d-16>4*2
          \bar "!"
          <d,-9>2
          <d-10>4*2
          <d-12 d,-6>4*2
          \bar "|"

          <cis'-15>4*2
          <cis-16>4*2
          \bar "!"
          <cis,-9>2
          <cis-10>4*2
          <cis-12 cis,-6>4*2
          \bar "|"

          <c'-12 c,-6 c,-3>2
          <c-15>4*2
          <c-16 c,-8 c,-4>4*2
          \bar "!"
          <c-16>4*2
          <c,-9>4*2
          <c-10 c,-5>4*2
          \bar "|"
          \break

          <b'-12 b,-6 b,-3>2
          <b-15>4*2
          \bar "!"
          <b-15>4*2
          <b-16>4*2
          <b,-9>4*2
          <b-10 b,-5>4*2
          \bar "|"

          <bes'-12 bes,-6 bes,-3>2
          <bes-14 bes,-7>4*2
          <bes-15>4*2
          \bar "!"
          <bes-15>4*2
          <bes-16>4*2
          <bes,-9>4*2
          <bes-10 bes,-5>4*2
          \bar "|"

          <a'-10 a,-5>2
          <a-12 a,-6 a,-3>2
          <a-14 a,-7>4*2
          \bar "!"
          <a-15>4*2
          <a-16>4*2
          <a,-9>4*2
          \bar "|"
          \break

          <aes'-10 aes,-5>2
          <aes-12 aes,-6 aes,-3>2
          \bar "!"
          <aes-15>4*2
          <aes-16>4*2
          \bar "|"

          <g-9>2
          <g-10>4*2
          <g-12 g,-6 g,-3>4*2
          \bar "!"
          <g-12 g,-6 g,-3>2
          <g-15>4*2
          <g-16 g,-8 g,-4>4*2
          \bar "|"

          <fis-9>2
          <fis-10>4*2
          <fis-12 fis,-6 fis,-3>4*2
          \bar "!"
          <fis-12 fis,-6 fis,-3>2
          <fis-15>4*2
          <fis-16 fis,-8 fis,-4>4*2
          \bar "|"
        }
        \new Voice = "fingeringb" \relative c'' {
          \accidentalStyle Score.forget
          \set Score.timing = ##f
          \omit Staff.TimeSignature
          \override Stem.length = 0
          \stemDown
          \set fingeringOrientations = #'(right)
          \override Fingering.whiteout = ##t
          \override Fingering.whiteout-style = #'rounded-box

          \clef treble
          s2 s s s s s
          s2 <e-8 e,-4> s s s s s
          s2 <ees-8 ees,-4> s s s s
          s2 <d-8 d,-4> s <d,-5> s
          s2 <cis'-8 cis,-4> s <cis,-5> s
          s2 s s <c'-8 c,-4> s s
          s2 s s <b-8 b,-4> s s
          s2 s s s <bes-8 bes,-4> s s
          s2 s s s <a-8 a,-4> s
          s2 s s <aes-8 aes,-4>
          s2 <g-5> s s s s
          s2 <fis-5> s s s s
        }
      >>
      \new Lyrics = "fingering"
      \context Lyrics = "fingering" {
        \lyricsto "fingerings" {
          % f
          \fingerTO
          \fingerTA
          \fingerTBC
          \fingerLA
          \fingerLAC
          \fingerLABC

          % e
          \fingerTO
          \fingerTB
          \fingerTAB
          \fingerTAC
          \fingerLO
          \fingerLAB
          \fingerLABC

          % ees
          \fingerTB
          \fingerTA
          \fingerTBC
          \fingerTABC
          \fingerLB
          \fingerLBC

          % d
          \fingerTA
          \fingerTAB
          \fingerLO
          \fingerLA
          \fingerLAC

          % cis
          \fingerTAB
          \fingerTBC
          \fingerLB
          \fingerLAB
          \fingerLABC

          % c
          \fingerTO
          \fingerTBC
          \fingerTAC
          \fingerLO
          \fingerLA
          \fingerLBC

          % b
          \fingerTB
          \fingerTAC
          \fingerLO
          \fingerLB
          \fingerLAB
          \fingerLAC

          % bes
          \fingerTA
          \fingerTAC
          \fingerTABC
          \fingerLB
          \fingerLA
          \fingerLBC
          \fingerLABC

          % a
          \fingerTO
          \fingerTAB
          \fingerTABC
          \fingerLA
          \fingerLAB
          \fingerLAC

          % aes
          \fingerTB
          \fingerTBC
          \fingerLAB
          \fingerLBC

          % g
          \fingerTO
          \fingerTA
          \fingerTAC
          \fingerLO
          \fingerLBC
          \fingerLAC

          % fis
          \fingerTB
          \fingerTAB
          \fingerTABC
          \fingerLB
          \fingerLAC
          \fingerLABC
        }
      }
      \new Lyrics = "tuning"
      \context Lyrics = "tuning" {
        \lyricsto "fingerings" {
          \override Lyrics.LyricText.font-size = #-2

          % f
          \tuningZero
          \tuningSharpFive
          \tuningFlatFifteen
          \tuningZero
          \tuningFlatTwenty
          \tuningSharpTen

          % e
          \tuningFlatTen
          \tuningZero
          \tuningSharpFive
          \tuningFlatFive
          \tuningFlatFifteen
          \tuningZero
          \tuningFlatTen

          % ees
          \tuningFlatTen
          \tuningZero
          \tuningSharpFive
          \tuningSharpFive
          \tuningFlatFifteen
          \tuningZero

          % d
          \tuningFlatTen
          \tuningZero
          \tuningSharpFive
          \tuningFlatFifteen
          \tuningSharpTen

          % cis
          \tuningFlatTen
          \tuningZero
          \tuningSharpFive
          \tuningFlatFifteen
          \tuningSharpTwenty

          % c
          \tuningZero
          \tuningFlatTen
          \tuningSharpTen
          \tuningZero
          \tuningSharpFive
          \tuningFlatFifteen

          % b
          \tuningZero
          \tuningZero
          \tuningFlatTen
          \tuningZero
          \tuningSharpFive
          \tuningFlatFive

          % bes
          \tuningZero
          \tuningFlatTwenty
          \tuningSharpTen
          \tuningFlatTen
          \tuningZero
          \tuningSharpFive
          \tuningSharpFive

          % a 
          \tuningFlatFifteen
          \tuningZero
          \tuningFlatTen
          \tuningFlatTen
          \tuningZero
          \tuningSharpFifteen

          % aes
          \tuningFlatFifteen
          \tuningZero
          \tuningFlatTen
          \tuningZero

          % g
          \tuningSharpFive
          \tuningFlatFifteen
          \tuningSharpTen
          \tuningZero
          \tuningFlatTen
          \tuningSharpTen

          % fis
          \tuningSharpFive
          \tuningFlatFifteen
          \tuningSharpTwenty
          \tuningZero
          \tuningZero
          \tuningSharpTwenty
        }
      }
      \new Staff
      <<
        \new Voice = "fingeringc" \relative c {
          \accidentalStyle Score.forget
          \set Score.timing = ##f
          \omit Staff.TimeSignature
          \override Stem.length = 0
          \stemUp
          \set fingeringOrientations = #'(right)
          \override Fingering.whiteout = ##t
          \override Fingering.whiteout-style = #'rounded-box

          \clef bass
          <f-2 f,-1>2 s s <f-3> s s
          s2 <e-2 e,-1> s s s <e-3> s
          s2 <ees-2> s s s <ees-3>
          s2 <d-2> s s <d-3>
          s2 <cis-2> s s <cis-3>
          s2 s <c-2 c,-1>4*2 <c-2>2 s s
          s2 s s <b-2> s s
          s2 s s s <bes-2> s s
          s2 s s s <a-2> s
          s2 s s <aes-2>
          s2 s s s s <g-2>
          s2 s s s s <fis-2>
        }
        \new Voice = "fingeringd" \relative c, {
          \accidentalStyle Score.forget
          \set Score.timing = ##f
          \omit Staff.TimeSignature
          \override Stem.length = 0
          \stemDown
          \set fingeringOrientations = #'(right)
          \override Fingering.whiteout = ##t
          \override Fingering.whiteout-style = #'rounded-box

          \clef bass
          s2 s s s s s
          s2 s s s s s s
          s2 <ees-1>4*2 s2 s s s
          s2 <d-1>4*2 s2 s s
          s2 <cis-1>4*2 s2 s s
          s2 s s <c-1>4*2 s2 s
          s2 s s <b-1>4*2 s2 s
          s2 s s s <bes-1>4*2 s2 s
          s2 s s s <a-1>4*2 s2
          s2 s s <aes-1>4*2
          s2 s s s s <g-1>4*2
          s2 s s s s <fis-1>4*2
        }
      >>
    >>
  >>
}
