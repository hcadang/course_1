#32.2 introduction to puts----------

puts 1 + 2

3 #puts simply writes onto the screen whatever comes after

#2.3 integer and floats----------

##integers:

5
-456
99999999999
0

#floats:

54.321
0.001
-205.444
0.0

##2.4 simple arithmetic----------

puts 1.0 + 2.0
puts 2.0 * 3.0
puts 5.0 - 8.0
puts 9.0 / 2.0

puts 1+2
puts 2*3
puts 5-8
puts 9/2
puts 9.to_f/2.to_f

#.to_f coverts the answer to a decimal

puts 10*50/25+(-55)
puts -10+(55+3*4)-100
puts 5**2

##2.5 a few things to try----------

#hours in a year. how many hours are in a year?

puts 24 * 365

#minutes in a decade. how many minutes are in a decade?

puts (60 * 24 * 365) * 10

#your age in seconds. how many seconds old are you?

puts (60 * 24 * 365) * 35

#author's age

puts 1111000000 / (60 * 60 * 24 * 365)

##3.0 letters----------

#strings can be anything letters, numbers, punctuation, digits, symbols, and spaces (empty strings)

puts 'Hello, world!'
puts ''
puts 'Good-bye'

##3.1 string arithmetic----------

#adding strings together

puts 'i like' + 'apple pie'

#next line of puts will add a space in between the 2 strings added together by adding a space after the after string or before the in the second string

puts 'i like ' + 'apple pie'
puts 'i like' + ' apple pie'

#next line of puts will multiply the string

puts 'blink ' * 4

#3.2 12 vs '12'

puts 12 + 12
puts '12' + '12'
puts '12 + 12'

puts 2 * 5
puts '2' * 5
puts '2 * 5'

##3.3 problems----------

#can not add number to a string or multiply a string by another string
#examples

puts '12' + 12
puts '2' * '5'
puts 'Betty' + 12
puts 'Fred' * 'John'

#becareful with your placement with * if you are multiplying a string
#examples:

puts 'pig' * 5 ##is the correct way
puts 5 * 'pig' ##this will not work

#if you like to use a ' in a string such as you're you will need to use a \ before '
#example

puts 'You\'re swell!'

#ALWAYS BE AWARE OF THE SYNTEX COLORING!!!!!!!

#\ backslash is the escape character for a ' and a \
##examples

puts 'You\'re swell!'
puts 'backslash at the end of a string: \\'
puts 'up\\down'
puts 'up\down'

#last to puts are identical. coded different but same return. \ does not escape the d but does escape itself.

##4.0 variables and assignment----------

#when you give a name to a string it is called an assignment.  the name of the string is called variables.
#example

my_string = '...you can say that again...'
puts my_string
puts my_string

name = 'Anya Christina Emmanuella Jenkins Harris'
puts 'My name ' + name + '.'
puts 'Wow! ' + name
puts 'is a really long name!'

composer = 'Mozart'
puts composer + ' was "da bomb" in his day.'

composer = 'Beethoven'
puts 'But I prefer ' + composer + ', personally.'

#variables can point to any kind of object, not just strings
#examples

my_own_var = 'just another ' + 'string'
puts my_own_var

my_own_var = 5 * (1+2)
puts my_own_var

#variables can point to about anything except other variables
#example

var1 = 8
var2 = var1
puts var1
puts var2

puts ''

var1 = 'eight'
puts var1
puts var2

##5.0 mixing it up----------

#objects that we have covered so far are integers, floats, strings.
#EVERYING IN RUBY IS AN OBJECT

##5.1 conversions----------

#.to_s converts to in a string

var1 = 2
var2 = '5'
puts var1.to_s + var2

returns 25

var1 = 2
var2 = '5'
puts var1.to_s + var2
puts var1 + var2.to_i

#.to_i converts to integer which is used on line 179 to var2

puts '51'.to_f
#this will convert to a decimal
puts '99.999'.to_f
#since this is a decimal already this will just covert it to a integer
puts '99.999'.to_i
#this will convert to integer and round down
puts ''
#just prints an empty string
puts '5 is my favorite number!'.to_i
#ruby understands the first character which is a 5 (integer) and converts it to an integer and will ignore the rest
puts 'Who asked you about 5 or whatever?'.to_i
#ruby sees the first character and its a letter and ignores the rest but will be 0 as default
puts 'Your momma did.'.to_f
#ruby sees the first character and its a letter and ignores the rest but will be 0 by default and is converted to a float which is a decimal
puts ''
#just prints an empty string
puts 'stringy'.to_s
#does nothing since its a string already
puts 3.to_i
#does nothing since its an integer already

#5.2 another look at puts----------
#examples

puts 20
# this is just an integer
puts 20.to_s
#does nothing put returns 20
puts '20'
#does nothing put returns 20

#returns all 20

#.to_s will get the string version of that object before it returns (prints it out)

##5.3 the gets method----------

#gets retrieves only strings
puts gets
#this will sit there and do nothing. press enter to escape.

##5.5 the chomp method----------

#below we are using just gets

puts 'Hello there, and what\'s your name?'
name = gets
puts 'Your name is ' + name + '?  What a lovely name!'
puts 'Pleased to meet you, ' + name + '. :)'

#below we are using gets.chomp
#this will remove any characters after we have typed the info and pressed enter

puts 'Hello there, and what\'s your name?'
name = gets.chomp
puts 'Your name is ' + name + '?  What a lovely name!'
puts 'Pleased to meet you, ' + name + '. :)'

#5.6 a few things to try----------

#USE DOUBLE QUOTES WHEN YOU ARE USING #{} IN YOUR STRING!!!!

#full name greeting program

puts "What is your first name?"
first_name = gets.chomp
puts "what is your middle name?"
middle_name = gets.chomp
puts "what is your last name?"
last_name = gets.chomp
puts "Hello #{first_name} #{middle_name} #{last_name}, Hope you are doing well! :)"

#bigger, better favorite number program

puts "What is your favorite number?"
fav_number = gets.chomp
puts "Well... #{fav_number.to_i + 1} is now your new bigger and better number!"

##ran into a problem with the above.  becareful what you make into an integer.  i placed .to_i after #{} and get.chomp. it belongs after the variable.

##5.7 mind your variables----------

#in ruby fixum (small integers) and bignums (really big integers) are integers there for will need to be converted to an integer
#has this same problem in exercise 5.6

#6.0 more about methods----------

#every object needs a method
#methods are things that do stuff
#methods comes after the . example clock.tick
#list the methods - gets, chomp, put, to_i, to_f, to_s, +, -, /, *

#examples
puts ('hello '.+ 'world')
puts ((10. * 9). + 9)

#below allows you to see what object you are in
puts self

#EVERY METHOD IS BEING DONE BY SOME OBJECT EVEN IF IT DOESN'T HAVE A DOT IN FRONT OF IT

##6.1 fancy string methods----------

var1 = "stop"
var2 = "deliver repaid desserts"
var3 = "....TCELES B HSUP A magic spell?"

puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3

#.reverse doesn't change the original string it just prints the string out in reverse

#program that asks for you name, middle, last individually and add the lengths together

puts "what is your first name?"
first_name = gets.chomp
puts "what is your middle name?"
middle_name = gets.chomp
puts "what is your last name?"
last_name = gets.chomp

puts "#{first_name.length.to_i + middle_name.length.to_i + last_name.length.to_i} is the total of characters in your name including spaces"

#remember what you are looking for and what you are trying to do!!!! i used .to_s after .length

letters = "aAbBcCdDeE"

puts letters.upcase
#puts all the characters in the array to caps
puts letters.downcase
#puts all the characters in the array lower case
puts letters.swapcase
#swaps it to AaBbCcDdEe
puts letters.capitalize
#capitalizes the first letter and downcases the rest
puts ' a'.capitalize
#this is a bit confusing - the capitalize method capitalizes only the first character, not the first letter.
puts letters
#your reg puts

line_width = 50
puts "Old Mother Hubbard".center(line_width)
puts "Sat in her cupboard".center(line_width)
puts "Eating her curds and whey.".center(line_width)
puts "When along came a spider".center(line_width)
puts "Who sat down beside her".center(line_width)
puts "And scared her poor shoe dog away.".center(line_width)

#.center will center the text within the spaces you set it to

line_width = 40
str = '--> text <--'
puts "#{str.ljust( line_width)}"
puts "#{str.center(line_width)}"
puts "#{str.rjust( line_width)}"
puts "#{str.ljust(line_width/2)} #{str.rjust(line_width/2)}"

#took me a bit to figure this out by using #{}

##6.2 a few tings to try----------

puts "Angry Boss Program"

puts "Ask your boss a question?"
quest = gets.chomp
puts "You're asking me,  #{quest}!!!  GO TO YOUR WHOLE BEFORE I FIRE YOU!!! hahaha"


puts "Table of contents"

line_width = 60
puts "Table of Contents".center(line_width)
puts "Chapter 1: Getting Started".ljust(line_width/2) + "page 1".rjust(line_width/2)
puts "Chapter 2: Numbers".ljust(line_width/2) + "page 9".rjust(line_width/2)
puts "Chapter 3: Letters".ljust(line_width/2) + "page 13".rjust(line_width/2)


line_width = 60
puts "Table of Contents".center(line_width)
puts "Chapter 1: Getting Started".ljust(30) + "page 1".rjust(30)
puts "Chapter 2: Numbers".ljust(30) + "page 9".rjust(30)
puts "Chapter 3: Letters".ljust(30) + "page 13".rjust(30)

#Tried this both ways to see what the difference would be.  Can't get the right side to line up to p

##6.5 random numbers----------

puts rand
puts rand
puts rand
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(1))
puts(rand(1))
puts(rand(1))
puts(rand(9999999999999999999999999999999999999))
puts "The weatherman said there is a #{rand(101).to_s} % chance of rain, but you can never trust a weatherman."

#rand is a random number generator
#you give it parameters such as lines 371 - 377. by default it will be 0 - what ever number you want
#plain random will give you a float greater then or equal or 0.0 and less than 1.0

srand 1976
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ''
srand 1976
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))

##srand will allow you to return the same order

##6.6 the math object-------------

puts(Math::PI)
puts(Math::E)
puts(Math.cos(Math::PI/3))
puts(Math.tan(Math::PI/4))
puts(Math.log(Math::E**2))
puts((1 + Math.sqrt(5))/2)

#:: is the scope operator
#going to move on and not pay attention to this

##7.1 comparison methods----------

#allows you to to determine to do one thing instead of another

puts 1 > 2
puts 1 < 2

# easy stuff

puts 5 >= 5
puts 5 <= 4

#easy stuff

puts 1 == 1
puts 2 != 1

#!= is asking if the left operand is different from the right operand

puts 'cat' < 'dog'

#we can also use these this operator when comparing strings. for the example above this will retrun true due the c in cat is before d in dog. it will look and compare their lexicographical ordering.

puts 'bug lady' < 'Xander'
puts 'bug lady'.downcase < 'Xander'.downcase

puts 2 < 10
puts '2' < '10'

#upper case in front of the word will be first in order before the lower case
#the rule above also goes for numbers that are strings

#7.2 branching----------

#branching is what comes after the if is true. the code between if and end.

puts "Hello, what's your name?"
name = gets.chomp
puts "Hello, #{name}..."

if name == "Chris"
  puts "What a lovely name!"
end

#enter a different name

Harold
Hello, Harold.  #I don't get the special return since I'm not Chris

#And that is branching. If what comes after the if is true, we run the code
#between the if and the end. If what comes after the if is false, we don't. Plain
#and simple.

#INDENTATION IS VERY IMPORTANT - PRACTICE GOOD STYLE OF CODING

#more examples
puts "I am a fortune-teller. Tell me your name:"
name = gets.chomp

if name == "Chris"
  puts "I see great things in your future."
else
  puts "Your future is...oh my! Look at the time!"
  puts "I really have to go, sorry!"
end

#keep it simple. branching is like a fork with different paths.

puts "Hello, and welcome to seventh grade English."
puts "My name is Mrs. Gabbard. And your name is....?"
name = gets.chomp

if name == name.capitalize
  puts "Please take a seat, #{name}."
else
  puts "#{name}...? You mean #{name}.capitalize, right?"
  puts "Don\'t you even know how to spell your name??"
  reply = gets.chomp

  if reply.downcase == "yes"
    puts "Hmmph! Well, sit down!"
  else
    puts "GET OUT!!"
  end
end

#if within an if??? ask Chris if this is good practice
#its good practice to start of with the following below

if name == name.capitalize
  something here
else
  something if not true
end

#this is what chris does during the live session. pay attention. wanna be like chris. lol
#writing out like this also helps that the computer understands the working program and will work.

##7.3 looping----------

#a way to tell the computer to stop something using a loop
#below shows that if you bye is the key word to end this loop if not it will remain active

input = ""

while input != "bye"
  puts input
  input = gets.chomp
end

puts "Come again soon!"

#below has a break to break the loop. this will return another "bye"

while "Spike" > "Angel"
  input = gets.chomp

  puts input

  if input == "bye"
  break
  end
end

puts "Come again soon!"

#7.4 a little bit of logic----------

puts "Hello, what\'s your name?"
name = gets.chomp
puts "Hello, #{name}..."

if name == "Chris"
  puts "What a lovely name!"
elsif name == "Katy"
  puts "What a lovely name!"
end

#i used elsif condition since he is using else and then if

#to better write the above with using just one set of "what a lovely name" use || which is the or, boolean method

puts "Hello, what's your name?"
name = gets.chomp
puts "Hello, #{name}."

if name == ("Chris"  || "Katy")
  puts "What a lovely name!"
end

#or

puts "Hello, what's your name?"
name = gets.chomp
puts "Hello, #{name}."

if name == "Chris"  || name == "Katy"
  puts "What a lovely name!"
end

#why can't i just do this... doesn't this make better logic???

puts "Hello, what's your name?"
name = gets.chomp

if name == "Chris"  || name == "Katy"
  puts "What a lovely name!"
else
  puts "Hello, #{name}."
end

#ask chris whats the best way to write this and why???

i_am_chris = true
i_am_purple = false
i_like_beer = true
i_eat_rocks = false
puts i_am_chris && i_like_beer
puts i_like_beer && i_eat_rocks
puts i_am_purple && i_like_beer
puts i_am_purple && i_eat_rocks
puts
puts i_am_chris || i_like_beer
puts i_like_beer || i_eat_rocks
puts i_am_purple || i_like_beer
puts i_am_purple || i_eat_rocks
puts
puts !i_am_purple
puts !i_am_chris

#returns:
true
false
false
false

true true true false

true
false

#more booleans  && (and) and ! (not)

and  Called Logical AND operator. If both the operands are true then then condition becomes true.  (a and b) is true.

or  Called Logical OR Operator. If any of the two operands are non zero then then condition becomes true.  (a or b) is true.

&&   Called Logical AND operator. If both the operands are non zero then then condition becomes true.  (a && b) is true.

||  Called Logical OR Operator. If any of the two operands are non zero then then condition becomes true.  (a || b) is true.

! Called Logical NOT Operator. Use to reverses the logical state of its operand. If a condition is true then Logical NOT operator will make false.   !(a && b) is false.

not Called Logical NOT Operator. Use to reverses the logical state of its operand. If a condition is true then Logical NOT operator will make false.   not(a && b) is false.

#7.5 a few things to try----------


##8 arrays and iterators

#arrays are a list in your computer. every slot in the list acts like a variable. you can see and point to an object.
#each slot in an array is given an index number
#variables aren't objects

names = ['Ada', 'Belle', 'Chris']
puts names
puts # acts like a br in html giving it a break line
puts names[0]
puts names[1]
puts names[2]
puts names[3]   #this will not work.  left to right starts with 0. 'Ada' is 0, 'Belle' is 1, 'Chris' is 2

#returns

Ada
Belle
Chris
Ada
Belle
Chris
nil # doesn't return nil but blank

#assigning variables

other_peeps = []
other_peeps[3] = 'beebee Meaner'
other_peeps[0] = 'Ah-ha'
other_peeps[1] = 'Seedee'
other_peeps[0] = 'beebee Ah-ha'
puts other_peeps

#returns

beebee Ah-ha
Seedee
nil
beebee Meaner

##8.1 the method each----------

#each allows us to do something to each of the object it points to without having to using index numbers associated to them

languages = ['English', 'Norwegian', 'Ruby']

  languages.each do |lang|
    puts "I love #{lang}!"
    puts "Don't you?"
  end

puts "And let's hear it for Java!"
puts "<crickets chirp in the distance>"

#returns

I love English!
Don't you?
I love Norwegian!
Don't you?
I love Ruby!
Don't you?
And let's hear it for Java!
<crickets chirp in the distance>

#the vertical bars don't do anything to lang; they just let each know which variable to use to feed in the objects in the array.

#a do example that doesn't is not an array method

3.times do 
  puts "Hip-Hip-Hooray!"
end

#returns

Hip-Hip-Hooray!
Hip-Hip-Hooray!
Hip-Hip-Hooray!

#another example

2.times do
  puts "... you can see that again ..."
end

##8.2 more array methods

#join and to_s works alike. but join ass a string in between the array's object.

foods = ['artichoke', 'brioche', 'caramel']
puts foods
puts
puts foods.to_s
puts
puts foods.join(', ') #not understanding this
puts
puts foods.join(' :) ') + ' 8)' #not understanding this

200.times do
puts []
end

#above do and end will not return anything since its doing nothing 200 times

#returns

artichoke
brioche
caramel

["artichoke", "brioche", "caramel"]

artichoke, brioche, caramel

artichoke :) brioche :) caramel 8)

# push and pop are opposites
# push adds an object to the end of the array or you can use apend which is <<
# pop removes the last object from the array and tells you what it was
# last is similar to pop but tells you whats at the end of the array and leaves the array alone
# push and pop will change the array

favorites = []
favorites.push 'raindrops on roses'
favorites.push 'whiskey on kittens'
puts favorites[0]
puts favorites.last
puts favorites.length
puts favorites.pop
puts favorites
puts favorites.length

#returns

raindrops on roses
whiskey on kittens
2
whiskey on kittens
raindrops on roses
1

#ask to explain, thought differently for the return???

##8.3 a few things to try

#Building and sorting an array. Write the program we talked about at the
#beginning of this chapter, one that asks us to type as many words as we
#want (one word per line, continuing until we just press Enter on an
#empty line) and then repeats the words back to us in alphabetical order.
#Make sure to test your program thoroughly; for example, does hitting
#Enter on an empty line always exit your program? Even on the first line?
#And the second? Hint: There’s a lovely array method that will give you a
#sorted version of an array: sort. Use it!

puts "please enter random words"
words = []

while
  word = gets.chomp
    if word == ""
      break
    end
    words << word
end

puts words.sort

#returns

janelle
rox
chas

chas
janelle
rox

#Table of contents, revisited. Rewrite your table of contents program on
#page 32. Start the program with an array holding all of the information
#for your table of contents (chapter names, page numbers, and so on).
#Then print out the information from the array in a beautifully formatted
#table of contents.

title = "Table of Contents"
chapters = [["Getting Started", 1], ["Numbers", 9], ["Letters", 13]]

puts title.center(50)
puts

  chapters.each_with_index do |chap, idx|
    name, page = chap
    chap_num = idx + 1
    beginning = "Chapter #{chap_num}: #{name}"
    ending = "page #{page}"
    puts beginning.ljust(30) + ending.rjust(20)
  end

  #is there a better way?


##9 writing your own methods
