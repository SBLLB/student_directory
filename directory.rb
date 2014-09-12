#Putting the studnet names into an array.

students = [	
	{:name => "Rachel Nolan", :cohort => :October},
	{:name => "Tim Scully", :cohort => :October},
	{:name => "Elena Garrone", :cohort => :October},
	{:name => "Sandrine Madame", :cohort => :October},
	{:name => "Andrew Hercules", :cohort => :October},
	{:name => "Stephen Giles", :cohort => :October},
	{:name => "Bernard Mordan", :cohort => :October},
	{:name => "Nicole Pell", :cohort => :October},
	{:name => "Yvette Cook", :cohort => :October},
	{:name => "Faddie Hman", :cohort => :October},
	{:name => "Anna Schechter", :cohort => :October},
	{:name => "Schlap Alias", :cohort => :October},
	{:name => "James Scarter", :cohort => :October},
	{:name => "Karin Nielsen", :cohort => :October},
	{:name => "Denise Yu", :cohort => :October}
]

#Defining a method to print the header... 
def print_header
	puts "The students of my cohort at Makers Academy"
	puts "----------------"
end

def print(students)
	students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

print_header
print(students)
print_footer(students)
