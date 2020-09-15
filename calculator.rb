loop = true

while loop
  puts 'Enter your calcul'
  user_input = gets.chomp()
  if user_input == ':q'
    loop = false
  elsif user_input =~ /[1-9]+␣*\+␣*[1-9]+/
    nbs = user_input.split('+')
    puts nbs[0].to_i + nbs[1].to_i
  elsif user_input =~ /[1-9]+␣*\-␣*[1-9]+/
    nbs = user_input.split('-')
    puts nbs[0].to_i - nbs[1].to_i
  elsif user_input =~ /[1-9]+␣*\*␣*[1-9]+/
    nbs = user_input.split('*')
    puts nbs[0].to_i * nbs[1].to_i
  elsif user_input =~ /[1-9]+␣*\/␣*[1-9]+/
    nbs = user_input.split('/')
    puts nbs[0].to_i / nbs[1].to_i
  end
end