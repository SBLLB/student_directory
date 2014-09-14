#Defining a method to print the header 
def print_header
	print "The students of my cohort at Makers Academy\n"
	print "----------------\n"
end

#Defining a method to print the student details 
def printout(students)
	students.each_with_index do |student, index|
		print "#{index + 1} #{student[:name]} (#{student[:cohort]} cohort)\n"
	end
end

#Defining a method to print the footer
def print_footer(names)
	print "Overall, we have #{names.length} great students.\n"
end

#Asking the user for input 
def input_students
	print "Please enter the names of the students\n"
	print "To finish, just hit return twice.\n"

	#Create empty array
	students = []
	#Get the first names
	name = gets.chomp
	#While the name is not empty, repeat this code. 

	while !name.empty? do
		#Add student hash to the array
		students << {:name => name, :cohort => :October}
		print "Now we have #{students.length} students.\n"
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




