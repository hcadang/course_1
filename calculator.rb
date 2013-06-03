
puts "First number please"
num1 = gets.chomp

puts "Second number please"
num2 = gets.chomp

puts "numbers used #{num1} and #{num2}"

puts "Please select one of the following:"
puts "Type '1' to add"
puts "Type '2' to subtract"
puts "Type '3' to multiply"
puts "Type '4' to divide"

case gets.chomp
	when "1"
	  puts "#{num1} + #{num2} = #{num1.to_i + num2.to_i}"
	when "2"
	  puts "#{num1} - #{num2} = #{num1.to_i - num2.to_i}"
	when "3"
	  puts "#{num1} * #{num2} = #{num1.to_i * num2.to_i}"
	when "4"
	  puts "#{num1} / #{num2} = #{num1.to_f / num2.to_f}"
	else
	  puts "Please try again..."
end


