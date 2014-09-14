#Defining a method to print the header 
def print_header
	puts "The students of my cohort at Makers Academy"
	puts "----------------"
end

#Defining a method to print the student details 
def print(students)
	students.each_with_index do |student, index|
		puts "#{index + 1} #{student[:name]} (#{student[:cohort]} cohort)"
	end
end

#Defining a method to print the footer
def print_footer(names)
	puts "Overall, we have #{names.length} great students."
end

#Asking the user for input 
def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice."

	#Create empty array
	students = []
	#Get the first names
	name = gets.chomp
	#While the name is not empty, repeat this code. 

	while !name.empty? do
		#Add student hash to the array
		students << {:name => name, :cohort => :October}
		puts "Now we have #{students.length} students."
		#Get another name from user
		name = gets.chomp
	end
	#return the array of students
	students
end

students = input_students
print_header
print(students)
print_footer(students)




