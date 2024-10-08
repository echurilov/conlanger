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
  # vowels
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
  # approximants
  "ʋ" => %{sonority: 12, place: 01, voicing: 1, pulmonic: 1},
  "ɹ" => %{sonority: 12, place: 04, voicing: 1, pulmonic: 1},
  "ɻ" => %{sonority: 12, place: 06, voicing: 1, pulmonic: 1},
  "j" => %{sonority: 12, place: 07, voicing: 1, pulmonic: 1},
  "ɰ" => %{sonority: 12, place: 08, voicing: 1, pulmonic: 1},
  "ʔ̞" => %{sonority: 12, place: 11, voicing: 1, pulmonic: 1},
  # lateral approximants
  "l̪" => %{sonority: 11, place: 03, voicing: 1, pulmonic: 1},
  "l" => %{sonority: 11, place: 04, voicing: 1, pulmonic: 1},
  "ɭ" => %{sonority: 11, place: 06, voicing: 1, pulmonic: 1},
  "ʎ" => %{sonority: 11, place: 07, voicing: 1, pulmonic: 1},
  "ʟ" => %{sonority: 11, place: 08, voicing: 1, pulmonic: 1},
  "ʟ̠" => %{sonority: 11, place: 09, voicing: 1, pulmonic: 1},
  # nasals
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
  "ɴ"  => %{sonority: 10, place: 09, voicing: 1, pulmonic: 1},\
# trills
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
  # taps/flaps
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
  # lateral fricatives
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
  # fricatives
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
  # sibilant fricatives
  "s" => %{sonority: 05, place: 04, voicing: 0, pulmonic: 1},
  "z" => %{sonority: 05, place: 04, voicing: 1, pulmonic: 1},
  "ʃ" => %{sonority: 05, place: 05, voicing: 0, pulmonic: 1},
  "ʒ" => %{sonority: 05, place: 05, voicing: 1, pulmonic: 1},
  "ʂ" => %{sonority: 05, place: 06, voicing: 0, pulmonic: 1},
  "ʐ" => %{sonority: 05, place: 06, voicing: 1, pulmonic: 1},
  "ɕ" => %{sonority: 05, place: 07, voicing: 0, pulmonic: 1},
  "ʑ" => %{sonority: 05, place: 07, voicing: 1, pulmonic: 1},
  # lateral affricates
  "tɬ" => %{sonority: 04, place: 04, voicing: 0, pulmonic: 1},
  "dɮ" => %{sonority: 04, place: 04, voicing: 1, pulmonic: 1},
  "tꞎ" => %{sonority: 04, place: 06, voicing: 0, pulmonic: 1},
  "d𝼅" => %{sonority: 04, place: 06, voicing: 1, pulmonic: 1},
  "c𝼆" => %{sonority: 04, place: 07, voicing: 0, pulmonic: 1},
  "ɟʎ̝" => %{sonority: 04, place: 07, voicing: 1, pulmonic: 1},
  "k𝼄" => %{sonority: 04, place: 08, voicing: 0, pulmonic: 1},
  "ɡʟ̝" => %{sonority: 04, place: 08, voicing: 1, pulmonic: 1},
  # affricates
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
  # 02 sibilant affricates
  "ts" => %{sonority: 02, place: 04, voicing: 0, pulmonic: 1},
  "dz" => %{sonority: 02, place: 04, voicing: 1, pulmonic: 1},
  "t̠ʃ" => %{sonority: 02, place: 05, voicing: 0, pulmonic: 1},
  "d̠ʒ" => %{sonority: 02, place: 05, voicing: 1, pulmonic: 1},
  "tʂ" => %{sonority: 02, place: 06, voicing: 0, pulmonic: 1},
  "dʐ" => %{sonority: 02, place: 06, voicing: 1, pulmonic: 1},
  "tɕ" => %{sonority: 02, place: 07, voicing: 0, pulmonic: 1},
  "dʑ" => %{sonority: 02, place: 07, voicing: 1, pulmonic: 1},
  # plosives
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
  # implosives
  "ɓ" => %{sonority: 01, place: 00, voicing: 1, pulmonic: 0},
  "ɗ" => %{sonority: 01, place: 04, voicing: 1, pulmonic: 0},
  "ᶑ" => %{sonority: 01, place: 06, voicing: 1, pulmonic: 0},
  "ʄ" => %{sonority: 01, place: 07, voicing: 1, pulmonic: 0},
  "ɠ" => %{sonority: 01, place: 08, voicing: 1, pulmonic: 0},
  "ʛ" => %{sonority: 01, place: 09, voicing: 1, pulmonic: 0},
  "ɓ̥" => %{sonority: 01, place: 00, voicing: 0, pulmonic: 0},
  "ɗ̥" => %{sonority: 01, place: 04, voicing: 0, pulmonic: 0},
  "ᶑ̊" => %{sonority: 01, place: 06, voicing: 0, pulmonic: 0},
  "ʄ̊" => %{sonority: 01, place: 07, voicing: 0, pulmonic: 0},
  "ɠ̊" => %{sonority: 01, place: 08, voicing: 0, pulmonic: 0},
  "ʛ̥" => %{sonority: 01, place: 09, voicing: 0, pulmonic: 0},
  # clicks
  "kʘ" => %{sonority: 00, place: 00, voicing: 0, pulmonic: 0},
  "qʘ" => %{sonority: 00, place: 00, voicing: 0, pulmonic: 0},
  "kǀ" => %{sonority: 00, place: 03, voicing: 0, pulmonic: 0},
  "qǀ" => %{sonority: 00, place: 03, voicing: 0, pulmonic: 0},
  "kǃ" => %{sonority: 00, place: 04, voicing: 0, pulmonic: 0},
  "qǃ" => %{sonority: 00, place: 04, voicing: 0, pulmonic: 0},
  "k𝼊" => %{sonority: 00, place: 06, voicing: 0, pulmonic: 0},
  "q𝼊" => %{sonority: 00, place: 06, voicing: 0, pulmonic: 0},
  "kǂ" => %{sonority: 00, place: 07, voicing: 0, pulmonic: 0},
  "qǂ" => %{sonority: 00, place: 07, voicing: 0, pulmonic: 0},
  "ɡʘ" => %{sonority: 00, place: 00, voicing: 1, pulmonic: 0},
  "ɢʘ" => %{sonority: 00, place: 00, voicing: 1, pulmonic: 0},
  "ɡǀ" => %{sonority: 00, place: 03, voicing: 1, pulmonic: 0},
  "ɢǀ" => %{sonority: 00, place: 03, voicing: 1, pulmonic: 0},
  "ɡǃ" => %{sonority: 00, place: 04, voicing: 1, pulmonic: 0},
  "ɢǃ" => %{sonority: 00, place: 04, voicing: 1, pulmonic: 0},
  "ɡ𝼊" => %{sonority: 00, place: 06, voicing: 1, pulmonic: 0},
  "ɢ𝼊" => %{sonority: 00, place: 06, voicing: 1, pulmonic: 0},
  "ɡǂ" => %{sonority: 00, place: 07, voicing: 1, pulmonic: 0},
  "ɢǂ" => %{sonority: 00, place: 07, voicing: 1, pulmonic: 0},
  "ŋʘ" => %{sonority: 00, place: 00, voicing: 1, pulmonic: 0},
  "ɴʘ" => %{sonority: 00, place: 00, voicing: 1, pulmonic: 0},
  "ŋǀ" => %{sonority: 00, place: 03, voicing: 1, pulmonic: 0},
  "ɴǀ" => %{sonority: 00, place: 03, voicing: 1, pulmonic: 0},
  "ŋǃ" => %{sonority: 00, place: 04, voicing: 1, pulmonic: 0},
  "ɴǃ" => %{sonority: 00, place: 04, voicing: 1, pulmonic: 0},
  "ŋ𝼊" => %{sonority: 00, place: 06, voicing: 1, pulmonic: 0},
  "ɴ𝼊" => %{sonority: 00, place: 06, voicing: 1, pulmonic: 0},
  "ŋǂ" => %{sonority: 00, place: 07, voicing: 1, pulmonic: 0},
  "ɴǂ" => %{sonority: 00, place: 07, voicing: 1, pulmonic: 0},
  "ʞ" => %{sonority: 00, place: 08, voicing: 0, pulmonic: 0},
  "kǁ" => %{sonority: 00, place: 04, voicing: 0, pulmonic: 0},
  "qǁ" => %{sonority: 00, place: 04, voicing: 0, pulmonic: 0},
  "ɡǁ" => %{sonority: 00, place: 04, voicing: 1, pulmonic: 0},
  "ɢǁ" => %{sonority: 00, place: 04, voicing: 1, pulmonic: 0},
  "ŋǁ" => %{sonority: 00, place: 04, voicing: 1, pulmonic: 0},
  "ɴǁ" => %{sonority: 00, place: 04, voicing: 1, pulmonic: 0},
  # ejectives
  "pʼ" => %{sonority: 01, place: 00, voicing: 0, pulmonic: 0},
  "tʼ" => %{sonority: 01, place: 04, voicing: 0, pulmonic: 0},
  "ʈʼ" => %{sonority: 01, place: 06, voicing: 0, pulmonic: 0},
  "cʼ" => %{sonority: 01, place: 07, voicing: 0, pulmonic: 0},
  "kʼ" => %{sonority: 01, place: 08, voicing: 0, pulmonic: 0},
  "qʼ" => %{sonority: 01, place: 09, voicing: 0, pulmonic: 0},
  "ʡʼ" => %{sonority: 01, place: 10, voicing: 0, pulmonic: 0},
  "p̪fʼ" => %{sonority: 03, place: 01, voicing: 0, pulmonic: 0},
  "t̪θʼ" => %{sonority: 03, place: 03, voicing: 0, pulmonic: 0},
  "tsʼ" => %{sonority: 03, place: 04, voicing: 0, pulmonic: 0},
  "t̠ʃʼ" => %{sonority: 03, place: 05, voicing: 0, pulmonic: 0},
  "tʂʼ" => %{sonority: 03, place: 06, voicing: 0, pulmonic: 0},
  "kxʼ" => %{sonority: 03, place: 08, voicing: 0, pulmonic: 0},
  "qχʼ" => %{sonority: 03, place: 09, voicing: 0, pulmonic: 0},
  "ɸʼ" => %{sonority: 06, place: 00, voicing: 0, pulmonic: 0},
  "fʼ" => %{sonority: 06, place: 01, voicing: 0, pulmonic: 0},
  "θʼ" => %{sonority: 06, place: 03, voicing: 0, pulmonic: 0},
  "sʼ" => %{sonority: 06, place: 04, voicing: 0, pulmonic: 0},
  "ʃʼ" => %{sonority: 06, place: 05, voicing: 0, pulmonic: 0},
  "ʂʼ" => %{sonority: 06, place: 06, voicing: 0, pulmonic: 0},
  "ɕʼ" => %{sonority: 06, place: 07, voicing: 0, pulmonic: 0},
  "xʼ" => %{sonority: 06, place: 08, voicing: 0, pulmonic: 0},
  "χʼ" => %{sonority: 06, place: 09, voicing: 0, pulmonic: 0},
  "tɬʼ" => %{sonority: 04, place: 04, voicing: 0, pulmonic: 0},
  "c𝼆ʼ" => %{sonority: 04, place: 07, voicing: 0, pulmonic: 0},
  "k𝼄ʼ" => %{sonority: 04, place: 08, voicing: 0, pulmonic: 0},
  "q𝼄ʼ" => %{sonority: 04, place: 09, voicing: 0, pulmonic: 0},
  "ɬʼ" => %{sonority: 07, place: 04, voicing: 0, pulmonic: 0},
  }

  def inventory do
    System.argv()
    |> Map.new(fn x -> {x, x} end)
    |> Map.intersect(@phonemes)
  end

  def word do
    phonemic_inventory = inventory()
    syll_count = Enum.random(1..12)

    Enum.to_list(1..syll_count)
    |> Enum.reduce([], fn _, acc -> Enum.concat(acc,[Conlang.syllable(phonemic_inventory)]) end)
    |> Enum.join(".")
    |> IO.puts()
  end

  def syllable(phonemic_inventory) do
    nucleus = phonemic_inventory
    |> Enum.filter(fn {_phoneme, features} -> features[:rounding] == 0 end)
    |> Enum.take_random(Enum.random(1..2))
    |> Enum.map(fn {k, _v} -> k end)
    |> Enum.join("")

    onset = phonemic_inventory
    |> Enum.filter(fn {_phoneme, features} -> features[:sonority] < 15 end)
    |> Enum.take_random(Enum.random(0..3))
    |> Enum.sort(&(Conlang.sonorance(&1) <= Conlang.sonorance(&2)))
    |> Enum.map(fn {k, _v} -> k end)
    |> Enum.join("")

    coda = phonemic_inventory
    |> Enum.filter(fn {_phoneme, features} -> features[:sonority] < 15 end)
    |> Enum.take_random(Enum.random(0..3))
    |> Enum.sort(&(Conlang.sonorance(&1) >= Conlang.sonorance(&2)))
    |> Enum.map(fn {k, _v} -> k end)
    |> Enum.join("")

    [onset, nucleus, coda]
    |> Enum.join("")
  end

  def sonorance({_character, %{sonority: sonority}}), do: sonority
  def vow_count, do: Enum.random(1..2)
  def cons_count, do: Enum.random(1..3)
end

Conlang.word()
