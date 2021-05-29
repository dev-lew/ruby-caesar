def alpha?(char)
  char.between?('A', 'Z') || char.between?('a', 'z')
end

def rotate(char, num)
  if !([char] & ['.', '?', '!', '\'', '\"', ' ']).empty?
    char
  else
    rot_ord = (char.ord + (num % 26))
    rot_ch = rot_ord.chr
    rot_ch = (rot_ord - 26).chr unless alpha?(rot_ch)
    rot_ch
  end
end

def caesar_cipher(str, num)
  str.each_char.reduce('') { |caesar_str, c| caesar_str + rotate(c, num) }
end
