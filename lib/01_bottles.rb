def bottles(number)
  if number == 1
    puts "1 bottle of beer on the wall"
    puts "no more bottles!"
  else
    puts "#{number} bottles of beer on the wall"
    bottles(number - 1)
  end
end

bottles(10)
