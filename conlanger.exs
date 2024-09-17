defmodule Conlang do

# sonority scale
# 15 vowel
# 14 glide
# 13 lateral
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
#  0 bilabial
#  1 labiodental
#  2 linguolabial
#  3 dental
#  4 alveolar
#  5 postalveolar
#  6 retroflex
#  7 palatal
#  8 velar
#  9 uvular
# 10 pharyngeal
# 11 glottal

@phonemes %{
  "i"  => %{sonority: 15, backness: -2, height:  3, rounding: 0, voicing: 1},
  "y"  => %{sonority: 15, backness: -2, height:  3, rounding: 1, voicing: 1},
  "ɨ"  => %{sonority: 15, backness:  0, height:  3, rounding: 0, voicing: 1},
  "ʉ"  => %{sonority: 15, backness:  0, height:  3, rounding: 1, voicing: 1},
  "ɯ"  => %{sonority: 15, backness:  2, height:  3, rounding: 0, voicing: 1},
  "u"  => %{sonority: 15, backness:  2, height:  3, rounding: 1, voicing: 1},
  "ɪ"  => %{sonority: 15, backness: -1, height:  2, rounding: 0, voicing: 1},
  "ʏ"  => %{sonority: 15, backness: -1, height:  2, rounding: 1, voicing: 1},
  "ʊ"  => %{sonority: 15, backness:  1, height:  2, rounding: 0, voicing: 1},
  "e"  => %{sonority: 15, backness:  2, height:  1, rounding: 0, voicing: 1},
  "ø"  => %{sonority: 15, backness:  2, height:  1, rounding: 1, voicing: 1},
  "ɘ"  => %{sonority: 15, backness:  0, height:  1, rounding: 0, voicing: 1},
  "ɵ"  => %{sonority: 15, backness:  0, height:  1, rounding: 1, voicing: 1},
  "ɤ"  => %{sonority: 15, backness: -2, height:  1, rounding: 0, voicing: 1},
  "o"  => %{sonority: 15, backness: -2, height:  1, rounding: 1, voicing: 1},
  "e̞"  => %{sonority: 15, backness:  2, height:  0, rounding: 0, voicing: 1},
  "ø̞"  => %{sonority: 15, backness:  2, height:  0, rounding: 1, voicing: 1},
  "ə"  => %{sonority: 15, backness:  0, height:  0, rounding: 0, voicing: 1},
  "ɤ̞"  => %{sonority: 15, backness: -2, height:  0, rounding: 0, voicing: 1},
  "o̞"  => %{sonority: 15, backness: -2, height:  0, rounding: 1, voicing: 1},
  "ɛ"  => %{sonority: 15, backness:  2, height: -1, rounding: 0, voicing: 1},
  "œ"  => %{sonority: 15, backness:  2, height: -1, rounding: 1, voicing: 1},
  "ɜ"  => %{sonority: 15, backness:  0, height: -1, rounding: 0, voicing: 1},
  "ɞ"  => %{sonority: 15, backness:  0, height: -1, rounding: 1, voicing: 1},
  "ʌ"  => %{sonority: 15, backness: -2, height: -1, rounding: 0, voicing: 1},
  "ɔ"  => %{sonority: 15, backness: -2, height: -1, rounding: 1, voicing: 1},
  "æ"  => %{sonority: 15, backness:  2, height: -2, rounding: 0, voicing: 1},
  "ɐ"  => %{sonority: 15, backness:  0, height: -2, rounding: 0, voicing: 1},
  "a"  => %{sonority: 15, backness:  2, height: -3, rounding: 0, voicing: 1},
  "ɶ"  => %{sonority: 15, backness:  1, height: -3, rounding: 1, voicing: 1},
  "ä"  => %{sonority: 15, backness:  0, height: -3, rounding: 0, voicing: 1},
  "ɑ"  => %{sonority: 15, backness: -2, height: -3, rounding: 0, voicing: 1},
  "ɒ"  => %{sonority: 15, backness: -2, height: -3, rounding: 1, voicing: 1},
  "m̥"  => %{sonority: 10, place:  0, voicing: 0, pulmonic: 1},
  "m"  => %{sonority: 10, place:  0, voicing: 1, pulmonic: 1},
  "ɱ̊"  => %{sonority: 10, place:  1, voicing: 0, pulmonic: 1},
  "ɱ"  => %{sonority: 10, place:  1, voicing: 1, pulmonic: 1},
  "n̼"  => %{sonority: 10, place:  2, voicing: 1, pulmonic: 1},
  "n̥"  => %{sonority: 10, place:  4, voicing: 0, pulmonic: 1},
  "n"  => %{sonority: 10, place:  4, voicing: 1, pulmonic: 1},
  "ɳ̊"  => %{sonority: 10, place:  6, voicing: 0, pulmonic: 1},
  "ɳ"  => %{sonority: 10, place:  6, voicing: 1, pulmonic: 1},
  "ɲ̊"  => %{sonority: 10, place:  7, voicing: 0, pulmonic: 1},
  "ɲ"  => %{sonority: 10, place:  7, voicing: 1, pulmonic: 1},
  "ŋ̊"  => %{sonority: 10, place:  8, voicing: 0, pulmonic: 1},
  "ŋ"  => %{sonority: 10, place:  8, voicing: 1, pulmonic: 1},
  "ɴ̥"  => %{sonority: 10, place:  9, voicing: 0, pulmonic: 1},
  "ɴ"  => %{sonority: 10, place:  9, voicing: 1, pulmonic: 1},
  "p"  => %{sonority:  1, place:  0, voicing: 0, pulmonic: 1},
  "b"  => %{sonority:  1, place:  0, voicing: 1, pulmonic: 1},
  "p̪"  => %{sonority:  1, place:  1, voicing: 0, pulmonic: 1},
  "b̪"  => %{sonority:  1, place:  1, voicing: 1, pulmonic: 1},
  "t̼"  => %{sonority:  1, place:  2, voicing: 1, pulmonic: 1},
  "d̼"  => %{sonority:  1, place:  2, voicing: 1, pulmonic: 1},
  "t"  => %{sonority:  1, place:  4, voicing: 0, pulmonic: 1},
  "d"  => %{sonority:  1, place:  4, voicing: 1, pulmonic: 1},
  "ʈ"  => %{sonority:  1, place:  6, voicing: 0, pulmonic: 1},
  "ɖ"  => %{sonority:  1, place:  6, voicing: 1, pulmonic: 1},
  "c"  => %{sonority:  1, place:  7, voicing: 0, pulmonic: 1},
  "ɟ"  => %{sonority:  1, place:  7, voicing: 1, pulmonic: 1},
  "k"  => %{sonority:  1, place:  8, voicing: 0, pulmonic: 1},
  "ɡ"  => %{sonority:  1, place:  8, voicing: 1, pulmonic: 1},
  "q"  => %{sonority:  1, place:  9, voicing: 0, pulmonic: 1},
  "ɢ"  => %{sonority:  1, place:  9, voicing: 1, pulmonic: 1},
  "ʡ"  => %{sonority:  1, place: 10, voicing: 0, pulmonic: 1},
  "ʔ"  => %{sonority:  1, place: 11, voicing: 0, pulmonic: 1},
  "ts" => %{sonority:  2, place:  4, voicing: 0, pulmonic: 1},
  "dz" => %{sonority:  2, place:  4, voicing: 1, pulmonic: 1},
  "t̠ʃ" => %{sonority:  2, place:  5, voicing: 0, pulmonic: 1},
  "d̠ʒ" => %{sonority:  2, place:  5, voicing: 1, pulmonic: 1},
  "tʂ" => %{sonority:  2, place:  6, voicing: 0, pulmonic: 1},
  "dʐ" => %{sonority:  2, place:  6, voicing: 1, pulmonic: 1},
  "tɕ" => %{sonority:  2, place:  7, voicing: 0, pulmonic: 1},
  "dʑ" => %{sonority:  2, place:  7, voicing: 1, pulmonic: 1},
  "pɸ" => %{sonority:  3, place:  0, voicing: 0, pulmonic: 1},
  "bβ" => %{sonority:  3, place:  0, voicing: 1, pulmonic: 1},
  "p̪f" => %{sonority:  3, place:  1, voicing: 0, pulmonic: 1},
  "b̪v" => %{sonority:  3, place:  1, voicing: 1, pulmonic: 1},
  "t̪θ" => %{sonority:  3, place:  3, voicing: 0, pulmonic: 1},
  "d̪ð" => %{sonority:  3, place:  3, voicing: 1, pulmonic: 1},
  "tɹ̝̊" => %{sonority:  3, place:  4, voicing: 0, pulmonic: 1},
  "dɹ̝" => %{sonority:  3, place:  4, voicing: 1, pulmonic: 1},
  "t̠ɹ̠̊˔" => %{sonority:  3, place:  5, voicing: 0, pulmonic: 1},
  "d̠ɹ̠˔" => %{sonority:  3, place:  5, voicing: 1, pulmonic: 1},
  "cç" => %{sonority:  3, place:  7, voicing: 0, pulmonic: 1},
  "ɟʝ" => %{sonority:  3, place:  7, voicing: 1, pulmonic: 1},
  "kx" => %{sonority:  3, place:  8, voicing: 0, pulmonic: 1},
  "ɡɣ" => %{sonority:  3, place:  8, voicing: 1, pulmonic: 1},
  "qχ" => %{sonority:  3, place:  9, voicing: 0, pulmonic: 1},
  "ɢʁ" => %{sonority:  3, place:  9, voicing: 1, pulmonic: 1},
  "ʡʜ" => %{sonority:  3, place:  10, voicing: 0, pulmonic: 1},
  "ʡʢ" => %{sonority:  3, place:  10, voicing: 1, pulmonic: 1},
  "ʔh" => %{sonority:  3, place:  11, voicing: 0, pulmonic: 1},
  "s" => %{sonority: 5, place: 4, voicing: 0, pulmonic: 1},
  "z" => %{sonority: 5, place: 4, voicing: 1, pulmonic: 1},
  "ʃ" => %{sonority: 5, place: 5, voicing: 0, pulmonic: 1},
  "ʒ" => %{sonority: 5, place: 5, voicing: 1, pulmonic: 1},
  "ʂ" => %{sonority: 5, place: 6, voicing: 0, pulmonic: 1},
  "ʐ" => %{sonority: 5, place: 6, voicing: 1, pulmonic: 1},
  "ɕ" => %{sonority: 5, place: 7, voicing: 0, pulmonic: 1},
  "ʑ" => %{sonority: 5, place: 7, voicing: 1, pulmonic: 1},
  "ɸ" => %{sonority: 6, place: 0, voicing: 0, pulmonic: 1},
  "β" => %{sonority: 6, place: 0, voicing: 1, pulmonic: 1},
  "f" => %{sonority: 6, place: 1, voicing: 0, pulmonic: 1},
  "v" => %{sonority: 6, place: 1, voicing: 1, pulmonic: 1},
  "θ̼" => %{sonority: 6, place: 2, voicing: 0, pulmonic: 1},
  "ð̼" => %{sonority: 6, place: 2, voicing: 1, pulmonic: 1},
  "θ" => %{sonority: 6, place: 3, voicing: 0, pulmonic: 1},
  "ð" => %{sonority: 6, place: 3, voicing: 1, pulmonic: 1},
  "θ̠" => %{sonority: 6, place: 4, voicing: 0, pulmonic: 1},
  "ð̠" => %{sonority: 6, place: 4, voicing: 1, pulmonic: 1},
  "ɹ̠̊˔" => %{sonority: 6, place: 5, voicing: 0, pulmonic: 1},
  "ɹ̠˔" => %{sonority: 6, place: 5, voicing: 1, pulmonic: 1},
  "ɻ̊˔" => %{sonority: 6, place: 6, voicing: 0, pulmonic: 1},
  "ɻ˔" => %{sonority: 6, place: 6, voicing: 1, pulmonic: 1},
  "ç" => %{sonority: 6, place: 7, voicing: 0, pulmonic: 1},
  "ʝ" => %{sonority: 6, place: 7, voicing: 1, pulmonic: 1},
  "x" => %{sonority: 6, place: 8, voicing: 0, pulmonic: 1},
  "ɣ" => %{sonority: 6, place: 8, voicing: 1, pulmonic: 1},
  "χ" => %{sonority: 6, place: 9, voicing: 0, pulmonic: 1},
  "ʁ" => %{sonority: 6, place: 9, voicing: 1, pulmonic: 1},
  "ħ" => %{sonority: 6, place: 10, voicing: 0, pulmonic: 1},
  "ʕ" => %{sonority: 6, place: 10, voicing: 1, pulmonic: 1},
  "h" => %{sonority: 6, place: 11, voicing: 0, pulmonic: 1},
  "ɦ" => %{sonority: 6, place: 11, voicing: 1, pulmonic: 1},
  "ʋ" => %{sonority: 14, place:  1, voicing: 1, pulmonic: 1},
  "ɹ" => %{sonority: 14, place:  4, voicing: 1, pulmonic: 1},
  "ɻ" => %{sonority: 14, place:  6, voicing: 1, pulmonic: 1},
  "j" => %{sonority: 14, place:  7, voicing: 1, pulmonic: 1},
  "ɰ" => %{sonority: 14, place:  8, voicing: 1, pulmonic: 1},
  "ʔ̞" => %{sonority: 14, place:  11, voicing: 1, pulmonic: 1},
  "ⱱ̟" => %{sonority:  8, place:  0, voicing: 1, pulmonic: 1},
  "ⱱ" => %{sonority:  8, place:  1, voicing: 1, pulmonic: 1},
  "ɾ̼" => %{sonority:  8, place:  2, voicing: 1, pulmonic: 1},
  "ɾ̥" => %{sonority:  8, place:  4, voicing: 0, pulmonic: 1},
  "ɾ" => %{sonority:  8, place:  4, voicing: 1, pulmonic: 1},
  "ɽ̊" => %{sonority:  8, place:  6, voicing: 0, pulmonic: 1},
  "ɽ" => %{sonority:  8, place:  6, voicing: 1, pulmonic: 1},
  "ɢ̆" => %{sonority:  8, place:  9, voicing: 1, pulmonic: 1},
  "ʡ̆" => %{sonority:  8, place:  10, voicing: 1, pulmonic: 1},
  "ʙ̥" => %{sonority: 9, place:  0, voicing: 0, pulmonic: 1},
  "ʙ" => %{sonority: 9, place:  0, voicing: 1, pulmonic: 1},
  "r̥" => %{sonority: 9, place:  4, voicing: 0, pulmonic: 1},
  "r" => %{sonority: 9, place:  4, voicing: 1, pulmonic: 1},
  "ɽ̊r̥" => %{sonority: 9, place:  6, voicing: 0, pulmonic: 1},
  "ɽr" => %{sonority: 9, place:  6, voicing: 1, pulmonic: 1},
  "ʀ̥" => %{sonority: 9, place:  9, voicing: 0, pulmonic: 1},
  "ʀ" => %{sonority: 9, place:  9, voicing: 1, pulmonic: 1},
  "ʜ" => %{sonority: 9, place:  10, voicing: 0, pulmonic: 1},
  "ʢ" => %{sonority: 9, place:  10, voicing: 1, pulmonic: 1},
  "tɬ" => %{sonority:  4, place:  4, voicing: 0, pulmonic: 1},
  "dɮ" => %{sonority:  4, place:  4, voicing: 1, pulmonic: 1},
  "tꞎ" => %{sonority:  4, place:  6, voicing: 0, pulmonic: 1},
  "d𝼅" => %{sonority:  4, place:  6, voicing: 1, pulmonic: 1},
  "c𝼆" => %{sonority:  4, place:  7, voicing: 0, pulmonic: 1},
  "ɟʎ̝" => %{sonority:  4, place:  7, voicing: 1, pulmonic: 1},
  "k𝼄" => %{sonority:  4, place:  8, voicing: 0, pulmonic: 1},
  "ɡʟ̝" => %{sonority:  4, place:  8, voicing: 1, pulmonic: 1},
  "ɬ̪" => %{sonority:  7, place:  3, voicing: 0, pulmonic: 1},
  "ɮ̪" => %{sonority:  7, place:  3, voicing: 1, pulmonic: 1},
  "ɬ" => %{sonority:  7, place:  4, voicing: 0, pulmonic: 1},
  "ɮ" => %{sonority:  7, place:  4, voicing: 1, pulmonic: 1},
  "ꞎ" => %{sonority:  7, place:  6, voicing: 0, pulmonic: 1},
  "𝼅" => %{sonority:  7, place:  6, voicing: 1, pulmonic: 1},
  "𝼆" => %{sonority:  7, place:  7, voicing: 0, pulmonic: 1},
  "ʎ̝" => %{sonority:  7, place:  7, voicing: 1, pulmonic: 1},
  "𝼄" => %{sonority:  7, place:  8, voicing: 0, pulmonic: 1},
  "ʟ̝" => %{sonority:  7, place:  8, voicing: 1, pulmonic: 1},
  "l̪" => %{sonority:  14, place:  3, voicing: 1, pulmonic: 1},
  "l" => %{sonority:  14, place:  4, voicing: 1, pulmonic: 1},
  "ɭ" => %{sonority:  14, place:  6, voicing: 1, pulmonic: 1},
  "ʎ" => %{sonority:  14, place:  7, voicing: 1, pulmonic: 1},
  "ʟ" => %{sonority:  14, place:  8, voicing: 1, pulmonic: 1},
  "ʟ̠" => %{sonority:  14, place:  9, voicing: 1, pulmonic: 1},
  "ɺ̥" => %{sonority:  8, place:  4, voicing: 0, pulmonic: 1},
  "ɺ" => %{sonority:  8, place:  4, voicing: 1, pulmonic: 1},
  "𝼈̥" => %{sonority:  8, place:  6, voicing: 0, pulmonic: 1},
  "𝼈" => %{sonority:  8, place:  6, voicing: 1, pulmonic: 1},
  "ʎ̆" => %{sonority:  8, place:  7, voicing: 1, pulmonic: 1},
  "ʟ̆" => %{sonority:  8, place:  8, voicing: 1, pulmonic: 1}
  }
end