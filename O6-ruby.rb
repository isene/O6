# Open-ended D6

def d6
  return rand(1..6)
end

def mod6
  result, f, flag = 0, true, false
  up = d6
  while up >= 4
    up = d6
    result += 1
    up == 6 ? f ? flag = true : f = true : f = false
  end
  return result, flag
end

def o6
  result, string = d6, ""
  return result if result === (2..5)
  mod, flag = mod6
  if result == 1
    result -= mod
    string = " Fumble" if flag
  elsif result == 6
    result += mod
    string = " Critical" if flag
  end
  puts result.to_s + string
end

o6
