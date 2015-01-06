def palindrome?(str)
  str == reverse(str)
end

def reverse(str)
  if str.length == 0
    return str
  else
    return str[str.length - 1] + reverse(str[0...str.length - 1])
  end
end
