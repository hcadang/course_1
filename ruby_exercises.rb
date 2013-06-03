##Note: We're looking for Ruby commands for the below questions, not the actual answers, unless it's a question. 

##Hint: You can type "irb" in your terminal to get a Ruby console to test things out. For multi-line code, use an editor that can run Ruby code, or copy/paste into irb.

##Hint 2: You can refer to the Ruby doc for Array and Hash here: 

##http://www.ruby-doc.org/core-1.9.3/Array.html
##http://www.ruby-doc.org/core-1.9.3/Hash.html


#1. Use the "each" method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

num = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
num.each {|x| puts x}

#2. Same as above, but only print out values greater than 5.

num = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
num.each {|x| puts x if x > 5}

#3. Now, using the same array from #2, use the "select" method to extract all odd numbers into a new array.

num = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
num.select {|x| (x % 2) != 0}

## x mod 2 does not = 0 will tell us if it's even or odd
##another way of writing this will be
num.select {|x| x.odd?}
	## 2.odd?
		##returns false
	## 3.odd?
		##returns true
	## 3.class
		##returns Fixnum
 
##% - Modulus (mod) - Divides left hand operand by right hand operand and returns remainder
	##examples
		## 4 % 2
			##returns 0 so 4 will not be selected
		## 3 % 2
			##returns 1 so 3 will be selected
##select will evaluate if its true or false, if true it will be selected
##this will put it into an new array
##every object can have a method

#4. Append "11" to the end of the array. Prepend "0" to the beginning.

num << 11

num.unshift(0)

#5. Get rid of "11". And append a "3".

num.pop
## this will return the last number of the array and remove

num << 3
##append 3

#6. Get rid of duplicates without specifically removing any one value.

num.uniq
##will only show every element once
num.uniq!
##will remove all the duplicates leaving the original

#7. What's the major difference between an Array and a Hash?

hash
	- has {}, unordered
	-	collection of key and value pairs,
	-	object type not integer index,

array
	- []
	-	in order
	-	integer index collections of any object


#8. Create a Hash using both Ruby 1.8 and 1.9 syntax.

1.8
h = {:a => 1, :b => 2, :c => 3, :d => 4}

1.9
h = {a:1, b:2, c:3, d:4}

##Suppose you have a h = {a:1, b:2, c:3, d:4}

#9. Get the value of key "b".

h[:b]
##hash is key:value


#10. Add to this hash the key:value pair {e:5}

h[:e] = 5
##ask chris, how come you can't use append here??

value can also be strings ---- "bob" => "jones"
but will need to call it by h["bob"] and not h[:bob]

#11. Remove all key:value pairs whose value is less than 3.5

h.delete_if{|k, v| v < 3.5}
##another method of .delete is without the _if 
	##this will delete it from the hash
		##if "bob" => "jones" is in the hash you type h.delete("bob")

#12. Can hash values be arrays? Can you have an array of hashes? (give examples)

Yes and Yes

arrays in hash ---- {a: ["lakers", "sucks"], b: ["this", "year"], c: 2013}

value can be anything. also key can be a string per previous question 11

hashes in arrays ---- [{}, {}, {[a: lakers, b: la]}] be careful what it returns only 3 elements here

#13. Look at several Rails/Ruby online API sources and say which one your like best and why.

http://www.ruby-doc.org/core-2.0/
##this is what i started with

http://railsapi.com/
##if this works for chris this will work for me