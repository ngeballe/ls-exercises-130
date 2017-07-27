def rot13(text)
  letters = [*'a'..'z']

  decrpyted_chars = text.chars.map do |char|
    next(char) unless char =~ /[[:alpha:]]/
    capitalize = char =~ /[A-Z]/
    char.downcase!
    letter_index = letters.index(char)
    adjusted_index = (letter_index + 13) % 26
    char = letters[adjusted_index]
    capitalize ? char.capitalize : char
  end
  decrpyted_chars.join
end

names = %{Nqn Ybirynpr
Tenpr Ubccre
Nqryr Tbyqfgvar
Nyna Ghevat
Puneyrf Onoontr
Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv
Wbua Ngnanfbss
Ybvf Unyog
Pynhqr Funaaba
Fgrir Wbof
Ovyy Tngrf
Gvz Orearef-Yrr
Fgrir Jbmavnx
Xbaenq Mhfr
Wbua Ngnanfbss
Fve Nagbal Ubner
Zneiva Zvafxl
Lhxvuveb Zngfhzbgb
Unllvz Fybavzfxv
Tregehqr Oynapu}

puts rot13(names)
