def look_and_say(str)
  count = 0
  num = ''
  symbol = str[0]
  (0..str.to_s.length).each do |i|
    if str[i] == symbol
      count += 1
    else
      num += "#{count}#{symbol}"
      symbol = str[i]
      count = 1
    end
  end
  num
end

num = "1"
10.times do
  puts num
  num = look_and_say(num)
end