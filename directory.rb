#Defining a method to print the header 
def print_header
	puts "The students of my cohort at Makers Academy".center(50)
	puts "----------------".center(50)
end

#Defining a method to print the student details 
def printout(students)
	students.each_with_index do |student, index|
		puts "#{index + 1} #{student[:name]} (Average Grade: #{student[:grade]}) (#{student[:cohort]} cohort)".center(50)
	end
end

#Defining a method to print the footer
def print_footer(names)
	puts "Overall, we have #{names.length} great students.".center(50)
end

#Asking the user for input 
def input_students
	puts "Please enter the names of the students".center(50)
	puts "To finish, just hit return twice.".center(50)

	#Create empty array
	students = []
	#Get the first names
	name = gets.chomp
	#While the name is not empty, repeat this code. 

	while !name.empty? do
		puts "What's the student's average grade?"
		grade = gets.chomp
		#Add student hash to the array
		students << {:name => name, :grade => grade, :cohort => :October}
		puts "Now we have #{students.length} students.".center(50)
		#Get another name from user
		name = gets.chomp
	end
	#return the array of students
	students
end

students = input_students
print_header
printout(students)
print_footer(students)




