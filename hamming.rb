# Write a program that can calculate the Hamming difference between two DNA strands.

# Example:
# GAGCCTACTAACGGGAT
# CATCGTAATGACGGCCT
# ^ ^ ^  ^ ^    ^^
# The Hamming distance between these two DNA strands is 7.

puts "Welcome to the Hamming Calculator"
puts "It will calculate the Hamming difference between two DNA strands."

class Hamming

	def initialize
		puts "Please enter the 1st DNA strand."
		@dna1 = gets.chomp
		puts "Please enter the 2nd DNA strand"
		@dna2 = gets.chomp
	end

end


Hamming.execute

