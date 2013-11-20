# This Ruby code will calculates the Hamming difference between two DNA strands.

# Example:
# GAGCCTACTAACGGGAT
# CATCGTAATGACGGCCT
# ^ ^ ^  ^ ^    ^^
# The Hamming distance between these two DNA strands is 7.

# -----------------Introduction:----------------------
puts "\n"
puts "*****************************HAMMING CALCULATOR********************************"
puts "\n"
puts "Welcome! This tool calculates the Hamming difference between two DNA strands."
puts "\n"
puts "INSTRUCTIONS: Begin by creating a new Hamming instance"
puts "EXAMPLE: Hamming.new"
puts "\n"
puts "*******************************************************************************"

class Hamming
	attr_accessor :dna_1, :dna_2
	attr_reader :hamming_total

	def initialize
		inputs
	end

	# User enters two DNA strings:
	def inputs
		puts "\n"
		puts "Please enter the 1st DNA strand."
		@dna_1 = gets.chomp.to_s.upcase 
		puts "Please enter the 2nd DNA strand"
		@dna_2 = gets.chomp.to_s.upcase
		# Confirms the user entered the right DNA strings:
		puts "\n"
		puts "You've entered:"
		puts "DNA 1: #{@dna_1}"
		puts "DNA 2: #{@dna_2}"
		puts "\n"
		puts "Press 1 if correct; 2 if incorrect."
		answer = gets.chomp.to_i
		# User can re-enter DNA strings (ie: if typed incorrectly):
		if answer == 2
			inputs
		else
			puts "\n"
			puts "Thank you. Let's begin..."
			puts "\n"
			sleep 1
			calculate
		end
	end

	def calculate
		# Converts the DNA inputs from strings to array of characters:
		array_1 = @dna_1.split("").map {|letter| letter.capitalize}
		array_2 = @dna_2.split("").map {|letter| letter.capitalize}
		
		@hamming_total = 0
		i = 0
		# Compares the character values in the DNA arrays:
		while array_1.length > i || array_2.length > i
			if array_1[i] != array_2[i]
				@hamming_total +=1
				# Verbage - for debuging:
				puts "Round #{i+1} scored a point"
			# Verbage - for debuging:
			else
				puts "Round #{i+1} did NOT score a point"
			end
			# Verbage - for debuging:
			puts "DNA 1: #{array_1}"
			puts "DNA 2: #{array_2}"
			puts "Hamming Total: #{@hamming_total}"
			puts ""
			sleep 1
			i += 1
		end
		# Outputs the results:
		puts "\n"
		puts "*************************************************************"
		puts "DNA 1: #{array_1}"
		puts "DNA 2: #{array_2}"
		puts "Hamming Total: #{@hamming_total}"
		puts "\n"
		puts "Thank you for using the Hamming Calculator."
		puts "*************************************************************"
	end
end
