@students = [] #an empty array accesible to all methods, an instance variable

#Defining a method to print the header 
def print_header
	puts "The students of my cohort at Makers Academy"
	puts "----------------"
end

#Defining a method to print the student details 
def print_students_list
	@students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

#Defining a method to print the footer
def print_footer
	puts "Overall, we have #{@students.length} great students."
end

#Asking the user for input 
def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice."
	#Get the first names
	name = gets.chomp
	#While the name is not empty, repeat this code. 
	while !name.empty? do
		#Add student hash to the array
		add_student_to_hash(name, :October)
		puts "Now we have #{@students.length} students."
		#Get another name from user
		name = gets.chomp
	end
end


def print_menu
	#print menu and ask user what to
	puts "1. Input the students"
	puts "2. Show the students"
	puts "3. Save the students list to students.csv"
	puts "4. Load students from the exisiting csv file"
	puts "9. Exit"#9 beacuse we'll be adding more items
end

def show_students
	print_header
	print_students_list
	print_footer
end

def save_students
	#open the file for writing 
	file = File.open("students.csv", "w")#w creates a new file if it doesnt already exist. truncates. writes.
	#iterate over the array of students
	@students.each do |student|
		student_data = [student[:name], student[:cohort]]
		csv_line = student_data.join(",")
		file.puts csv_line
	end
	puts "The list of students has been saved to a csv file."
	file.close
end

def add_student_to_hash(name, cohort)
	@students << {:name => name, :cohort => cohort.to_sym}
end

def load_students
	file = File.open("students.csv", "r")
	file.readlines.each do |line|
		name, cohort = line.chomp.split(',')
		add_student_to_hash(name, cohort)
	end
	file.close
end

def process(selection)
	case selection
		when "1"
			input_students
		when "2"
			show_students
		when "3"
			save_students
		when "4"
			load_students
		when "9"
			exit #this will cause program to terminate
		else
			puts "I don't know what you meant, try again"
	end
end

#Interactive menu.
def interactive_menu
	loop do
		print_menu
		process(gets.chomp)
	end
end

interactive_menu


