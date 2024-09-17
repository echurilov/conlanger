defmodule Conlang do

# sonority scale
# 13 vowel
# 12 approximant
# 11 lateral approximant
# 10 nasal
# 09 trill
# 08 tap/flap
# 07 lateral fricative
# 06 fricative
# 05 sibilant fricative
# 04 lateral affricate
# 03 affricate
# 02 sibilant affricate
# 01 plosive
# 00 click

# places
# 00 bilabial
# 01 labiodental
# 02 linguolabial
# 03 dental
# 04 alveolar
# 05 postalveolar
# 06 retroflex
# 07 palatal
# 08 velar
# 09 uvular
# 10 pharyngeal
# 11 glottal

@phonemes %{
  "i"  => %{sonority: 13, backness: -2, height:  3, rounding: 0, voicing: 1},
  "y"  => %{sonority: 13, backness: -2, height:  3, rounding: 1, voicing: 1},
  "ɨ"  => %{sonority: 13, backness:  0, height:  3, rounding: 0, voicing: 1},
  "ʉ"  => %{sonority: 13, backness:  0, height:  3, rounding: 1, voicing: 1},
  "ɯ"  => %{sonority: 13, backness:  2, height:  3, rounding: 0, voicing: 1},
  "u"  => %{sonority: 13, backness:  2, height:  3, rounding: 1, voicing: 1},
  "ɪ"  => %{sonority: 13, backness: -1, height:  2, rounding: 0, voicing: 1},
  "ʏ"  => %{sonority: 13, backness: -1, height:  2, rounding: 1, voicing: 1},
  "ʊ"  => %{sonority: 13, backness:  1, height:  2, rounding: 0, voicing: 1},
  "e"  => %{sonority: 13, backness:  2, height:  1, rounding: 0, voicing: 1},
  "ø"  => %{sonority: 13, backness:  2, height:  1, rounding: 1, voicing: 1},
  "ɘ"  => %{sonority: 13, backness:  0, height:  1, rounding: 0, voicing: 1},
  "ɵ"  => %{sonority: 13, backness:  0, height:  1, rounding: 1, voicing: 1},
  "ɤ"  => %{sonority: 13, backness: -2, height:  1, rounding: 0, voicing: 1},
  "o"  => %{sonority: 13, backness: -2, height:  1, rounding: 1, voicing: 1},
  "e̞"  => %{sonority: 13, backness:  2, height:  0, rounding: 0, voicing: 1},
  "ø̞"  => %{sonority: 13, backness:  2, height:  0, rounding: 1, voicing: 1},
  "ə"  => %{sonority: 13, backness:  0, height:  0, rounding: 0, voicing: 1},
  "ɤ̞"  => %{sonority: 13, backness: -2, height:  0, rounding: 0, voicing: 1},
  "o̞"  => %{sonority: 13, backness: -2, height:  0, rounding: 1, voicing: 1},
  "ɛ"  => %{sonority: 13, backness:  2, height: -1, rounding: 0, voicing: 1},
  "œ"  => %{sonority: 13, backness:  2, height: -1, rounding: 1, voicing: 1},
  "ɜ"  => %{sonority: 13, backness:  0, height: -1, rounding: 0, voicing: 1},
  "ɞ"  => %{sonority: 13, backness:  0, height: -1, rounding: 1, voicing: 1},
  "ʌ"  => %{sonority: 13, backness: -2, height: -1, rounding: 0, voicing: 1},
  "ɔ"  => %{sonority: 13, backness: -2, height: -1, rounding: 1, voicing: 1},
  "æ"  => %{sonority: 13, backness:  2, height: -2, rounding: 0, voicing: 1},
  "ɐ"  => %{sonority: 13, backness:  0, height: -2, rounding: 0, voicing: 1},
  "a"  => %{sonority: 13, backness:  2, height: -3, rounding: 0, voicing: 1},
  "ɶ"  => %{sonority: 13, backness:  1, height: -3, rounding: 1, voicing: 1},
  "ä"  => %{sonority: 13, backness:  0, height: -3, rounding: 0, voicing: 1},
  "ɑ"  => %{sonority: 13, backness: -2, height: -3, rounding: 0, voicing: 1},
  "ɒ"  => %{sonority: 13, backness: -2, height: -3, rounding: 1, voicing: 1},
  "ʋ" => %{sonority: 12, place: 01, voicing: 1, pulmonic: 1},
  "ɹ" => %{sonority: 12, place: 04, voicing: 1, pulmonic: 1},
  "ɻ" => %{sonority: 12, place: 06, voicing: 1, pulmonic: 1},
  "j" => %{sonority: 12, place: 07, voicing: 1, pulmonic: 1},
  "ɰ" => %{sonority: 12, place: 08, voicing: 1, pulmonic: 1},
  "ʔ̞" => %{sonority: 12, place: 11, voicing: 1, pulmonic: 1},
  "l̪" => %{sonority: 11, place: 03, voicing: 1, pulmonic: 1},
  "l" => %{sonority: 11, place: 04, voicing: 1, pulmonic: 1},
  "ɭ" => %{sonority: 11, place: 06, voicing: 1, pulmonic: 1},
  "ʎ" => %{sonority: 11, place: 07, voicing: 1, pulmonic: 1},
  "ʟ" => %{sonority: 11, place: 08, voicing: 1, pulmonic: 1},
  "ʟ̠" => %{sonority: 11, place: 09, voicing: 1, pulmonic: 1},
  "m̥"  => %{sonority: 10, place: 00, voicing: 0, pulmonic: 1},
  "m"  => %{sonority: 10, place: 00, voicing: 1, pulmonic: 1},
  "ɱ̊"  => %{sonority: 10, place: 01, voicing: 0, pulmonic: 1},
  "ɱ"  => %{sonority: 10, place: 01, voicing: 1, pulmonic: 1},
  "n̼"  => %{sonority: 10, place: 02, voicing: 1, pulmonic: 1},
  "n̥"  => %{sonority: 10, place: 04, voicing: 0, pulmonic: 1},
  "n"  => %{sonority: 10, place: 04, voicing: 1, pulmonic: 1},
  "ɳ̊"  => %{sonority: 10, place: 06, voicing: 0, pulmonic: 1},
  "ɳ"  => %{sonority: 10, place: 06, voicing: 1, pulmonic: 1},
  "ɲ̊"  => %{sonority: 10, place: 07, voicing: 0, pulmonic: 1},
  "ɲ"  => %{sonority: 10, place: 07, voicing: 1, pulmonic: 1},
  "ŋ̊"  => %{sonority: 10, place: 08, voicing: 0, pulmonic: 1},
  "ŋ"  => %{sonority: 10, place: 08, voicing: 1, pulmonic: 1},
  "ɴ̥"  => %{sonority: 10, place: 09, voicing: 0, pulmonic: 1},
  "ɴ"  => %{sonority: 10, place: 09, voicing: 1, pulmonic: 1},
  "ʙ̥" => %{sonority: 09, place: 00, voicing: 0, pulmonic: 1},
  "ʙ" => %{sonority: 09, place: 00, voicing: 1, pulmonic: 1},
  "r̥" => %{sonority: 09, place: 04, voicing: 0, pulmonic: 1},
  "r" => %{sonority: 09, place: 04, voicing: 1, pulmonic: 1},
  "ɽ̊r̥" => %{sonority: 09, place: 06, voicing: 0, pulmonic: 1},
  "ɽr" => %{sonority: 09, place: 06, voicing: 1, pulmonic: 1},
  "ʀ̥" => %{sonority: 09, place: 09, voicing: 0, pulmonic: 1},
  "ʀ" => %{sonority: 09, place: 09, voicing: 1, pulmonic: 1},
  "ʜ" => %{sonority: 09, place: 10, voicing: 0, pulmonic: 1},
  "ʢ" => %{sonority: 09, place: 10, voicing: 1, pulmonic: 1},
  "ⱱ̟" => %{sonority: 08, place: 00, voicing: 1, pulmonic: 1},
  "ⱱ" => %{sonority: 08, place: 01, voicing: 1, pulmonic: 1},
  "ɾ̼" => %{sonority: 08, place: 02, voicing: 1, pulmonic: 1},
  "ɾ̥" => %{sonority: 08, place: 04, voicing: 0, pulmonic: 1},
  "ɾ" => %{sonority: 08, place: 04, voicing: 1, pulmonic: 1},
  "ɽ̊" => %{sonority: 08, place: 06, voicing: 0, pulmonic: 1},
  "ɽ" => %{sonority: 08, place: 06, voicing: 1, pulmonic: 1},
  "ɢ̆" => %{sonority: 08, place: 09, voicing: 1, pulmonic: 1},
  "ʡ̆" => %{sonority: 08, place: 10, voicing: 1, pulmonic: 1},
  "ɺ̥" => %{sonority: 08, place: 04, voicing: 0, pulmonic: 1},
  "ɺ" => %{sonority: 08, place: 04, voicing: 1, pulmonic: 1},
  "𝼈̥" => %{sonority: 08, place: 06, voicing: 0, pulmonic: 1},
  "𝼈" => %{sonority: 08, place: 06, voicing: 1, pulmonic: 1},
  "ʎ̆" => %{sonority: 08, place: 07, voicing: 1, pulmonic: 1},
  "ʟ̆" => %{sonority: 08, place: 08, voicing: 1, pulmonic: 1},
  "ɬ̪" => %{sonority: 07, place: 03, voicing: 0, pulmonic: 1},
  "ɮ̪" => %{sonority: 07, place: 03, voicing: 1, pulmonic: 1},
  "ɬ" => %{sonority: 07, place: 04, voicing: 0, pulmonic: 1},
  "ɮ" => %{sonority: 07, place: 04, voicing: 1, pulmonic: 1},
  "ꞎ" => %{sonority: 07, place: 06, voicing: 0, pulmonic: 1},
  "𝼅" => %{sonority: 07, place: 06, voicing: 1, pulmonic: 1},
  "𝼆" => %{sonority: 07, place: 07, voicing: 0, pulmonic: 1},
  "ʎ̝" => %{sonority: 07, place: 07, voicing: 1, pulmonic: 1},
  "𝼄" => %{sonority: 07, place: 08, voicing: 0, pulmonic: 1},
  "ʟ̝" => %{sonority: 07, place: 08, voicing: 1, pulmonic: 1},
  "ɸ" => %{sonority: 06, place: 00, voicing: 0, pulmonic: 1},
  "β" => %{sonority: 06, place: 00, voicing: 1, pulmonic: 1},
  "f" => %{sonority: 06, place: 01, voicing: 0, pulmonic: 1},
  "v" => %{sonority: 06, place: 01, voicing: 1, pulmonic: 1},
  "θ̼" => %{sonority: 06, place: 02, voicing: 0, pulmonic: 1},
  "ð̼" => %{sonority: 06, place: 02, voicing: 1, pulmonic: 1},
  "θ" => %{sonority: 06, place: 03, voicing: 0, pulmonic: 1},
  "ð" => %{sonority: 06, place: 03, voicing: 1, pulmonic: 1},
  "θ̠" => %{sonority: 06, place: 04, voicing: 0, pulmonic: 1},
  "ð̠" => %{sonority: 06, place: 04, voicing: 1, pulmonic: 1},
  "ɹ̠̊˔" => %{sonority: 06, place: 05, voicing: 0, pulmonic: 1},
  "ɹ̠˔" => %{sonority: 06, place: 05, voicing: 1, pulmonic: 1},
  "ɻ̊˔" => %{sonority: 06, place: 06, voicing: 0, pulmonic: 1},
  "ɻ˔" => %{sonority: 06, place: 06, voicing: 1, pulmonic: 1},
  "ç" => %{sonority: 06, place: 07, voicing: 0, pulmonic: 1},
  "ʝ" => %{sonority: 06, place: 07, voicing: 1, pulmonic: 1},
  "x" => %{sonority: 06, place: 08, voicing: 0, pulmonic: 1},
  "ɣ" => %{sonority: 06, place: 08, voicing: 1, pulmonic: 1},
  "χ" => %{sonority: 06, place: 09, voicing: 0, pulmonic: 1},
  "ʁ" => %{sonority: 06, place: 09, voicing: 1, pulmonic: 1},
  "ħ" => %{sonority: 06, place: 10, voicing: 0, pulmonic: 1},
  "ʕ" => %{sonority: 06, place: 10, voicing: 1, pulmonic: 1},
  "h" => %{sonority: 06, place: 11, voicing: 0, pulmonic: 1},
  "ɦ" => %{sonority: 06, place: 11, voicing: 1, pulmonic: 1},
  "s" => %{sonority: 05, place: 04, voicing: 0, pulmonic: 1},
  "z" => %{sonority: 05, place: 04, voicing: 1, pulmonic: 1},
  "ʃ" => %{sonority: 05, place: 05, voicing: 0, pulmonic: 1},
  "ʒ" => %{sonority: 05, place: 05, voicing: 1, pulmonic: 1},
  "ʂ" => %{sonority: 05, place: 06, voicing: 0, pulmonic: 1},
  "ʐ" => %{sonority: 05, place: 06, voicing: 1, pulmonic: 1},
  "ɕ" => %{sonority: 05, place: 07, voicing: 0, pulmonic: 1},
  "ʑ" => %{sonority: 05, place: 07, voicing: 1, pulmonic: 1},
  "tɬ" => %{sonority: 04, place: 04, voicing: 0, pulmonic: 1},
  "dɮ" => %{sonority: 04, place: 04, voicing: 1, pulmonic: 1},
  "tꞎ" => %{sonority: 04, place: 06, voicing: 0, pulmonic: 1},
  "d𝼅" => %{sonority: 04, place: 06, voicing: 1, pulmonic: 1},
  "c𝼆" => %{sonority: 04, place: 07, voicing: 0, pulmonic: 1},
  "ɟʎ̝" => %{sonority: 04, place: 07, voicing: 1, pulmonic: 1},
  "k𝼄" => %{sonority: 04, place: 08, voicing: 0, pulmonic: 1},
  "ɡʟ̝" => %{sonority: 04, place: 08, voicing: 1, pulmonic: 1},
  "pɸ" => %{sonority: 03, place: 00, voicing: 0, pulmonic: 1},
  "bβ" => %{sonority: 03, place: 00, voicing: 1, pulmonic: 1},
  "p̪f" => %{sonority: 03, place: 01, voicing: 0, pulmonic: 1},
  "b̪v" => %{sonority: 03, place: 01, voicing: 1, pulmonic: 1},
  "t̪θ" => %{sonority: 03, place: 03, voicing: 0, pulmonic: 1},
  "d̪ð" => %{sonority: 03, place: 03, voicing: 1, pulmonic: 1},
  "tɹ̝̊" => %{sonority: 03, place: 04, voicing: 0, pulmonic: 1},
  "dɹ̝" => %{sonority: 03, place: 04, voicing: 1, pulmonic: 1},
  "t̠ɹ̠̊˔" => %{sonority: 03, place: 05, voicing: 0, pulmonic: 1},
  "d̠ɹ̠˔" => %{sonority: 03, place: 05, voicing: 1, pulmonic: 1},
  "cç" => %{sonority: 03, place: 07, voicing: 0, pulmonic: 1},
  "ɟʝ" => %{sonority: 03, place: 07, voicing: 1, pulmonic: 1},
  "kx" => %{sonority: 03, place: 08, voicing: 0, pulmonic: 1},
  "ɡɣ" => %{sonority: 03, place: 08, voicing: 1, pulmonic: 1},
  "qχ" => %{sonority: 03, place: 09, voicing: 0, pulmonic: 1},
  "ɢʁ" => %{sonority: 03, place: 09, voicing: 1, pulmonic: 1},
  "ʡʜ" => %{sonority: 03, place: 10, voicing: 0, pulmonic: 1},
  "ʡʢ" => %{sonority: 03, place: 10, voicing: 1, pulmonic: 1},
  "ʔh" => %{sonority: 03, place: 11, voicing: 0, pulmonic: 1},
  "ts" => %{sonority: 02, place: 04, voicing: 0, pulmonic: 1},
  "dz" => %{sonority: 02, place: 04, voicing: 1, pulmonic: 1},
  "t̠ʃ" => %{sonority: 02, place: 05, voicing: 0, pulmonic: 1},
  "d̠ʒ" => %{sonority: 02, place: 05, voicing: 1, pulmonic: 1},
  "tʂ" => %{sonority: 02, place: 06, voicing: 0, pulmonic: 1},
  "dʐ" => %{sonority: 02, place: 06, voicing: 1, pulmonic: 1},
  "tɕ" => %{sonority: 02, place: 07, voicing: 0, pulmonic: 1},
  "dʑ" => %{sonority: 02, place: 07, voicing: 1, pulmonic: 1},
  "p"  => %{sonority: 01, place: 00, voicing: 0, pulmonic: 1},
  "b"  => %{sonority: 01, place: 00, voicing: 1, pulmonic: 1},
  "p̪"  => %{sonority: 01, place: 01, voicing: 0, pulmonic: 1},
  "b̪"  => %{sonority: 01, place: 01, voicing: 1, pulmonic: 1},
  "t̼"  => %{sonority: 01, place: 02, voicing: 1, pulmonic: 1},
  "d̼"  => %{sonority: 01, place: 02, voicing: 1, pulmonic: 1},
  "t"  => %{sonority: 01, place: 04, voicing: 0, pulmonic: 1},
  "d"  => %{sonority: 01, place: 04, voicing: 1, pulmonic: 1},
  "ʈ"  => %{sonority: 01, place: 06, voicing: 0, pulmonic: 1},
  "ɖ"  => %{sonority: 01, place: 06, voicing: 1, pulmonic: 1},
  "c"  => %{sonority: 01, place: 07, voicing: 0, pulmonic: 1},
  "ɟ"  => %{sonority: 01, place: 07, voicing: 1, pulmonic: 1},
  "k"  => %{sonority: 01, place: 08, voicing: 0, pulmonic: 1},
  "ɡ"  => %{sonority: 01, place: 08, voicing: 1, pulmonic: 1},
  "q"  => %{sonority: 01, place: 09, voicing: 0, pulmonic: 1},
  "ɢ"  => %{sonority: 01, place: 09, voicing: 1, pulmonic: 1},
  "ʡ"  => %{sonority: 01, place: 10, voicing: 0, pulmonic: 1},
  "ʔ"  => %{sonority: 01, place: 11, voicing: 0, pulmonic: 1},
  }

  def syllable do
    nucleus = @phonemes
    |> Enum.filter(fn {_phoneme, features} -> features[:rounding] == 0 end)
    |> Enum.take_random(Enum.random(1..2))
    |> Enum.map(fn {k, _v} -> k end)
    |> Enum.join("")

    onset = @phonemes
    |> Enum.filter(fn {_phoneme, features} -> features[:sonority] < 15 end)
    |> Enum.take_random(Enum.random(0..3))
    |> Enum.sort(&(Conlang.sonorance(&1) <= Conlang.sonorance(&2)))
    |> Enum.map(fn {k, _v} -> k end)
    |> Enum.join("")

    coda = @phonemes
    |> Enum.filter(fn {_phoneme, features} -> features[:sonority] < 15 end)
    |> Enum.take_random(Enum.random(0..3))
    |> Enum.sort(&(Conlang.sonorance(&1) >= Conlang.sonorance(&2)))
    |> Enum.map(fn {k, _v} -> k end)
    |> Enum.join("")

    [onset, nucleus, coda]
    |> Enum.join("")
    |> IO.puts()
  end

  def sonorance({_character, %{sonority: sonority}}), do: sonority
  def vow_count, do: Enum.random(1..2)
  def cons_count, do: Enum.random(1..3)
end

Conlang.syllable()
