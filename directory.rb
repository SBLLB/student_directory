#Putting the studnet names into an array.

students = [	
	"Rachel Nolan",
	"Tim Scully",
	"Elena Garrone",
	"Sandrine Madame",
	"Andrew Hercules",
	"Stephen Giles",
	"Bernard Mordan",
	"Nicole Pell",
	"Yvette Cook",
	"Faddie Hman",
	"Anna Schechter",
	"Schlap Alias",
	"James Scarter",
	"Karin Nielsen",
	"Denise Yu"
]

#Defining a method to print the header... 
def print_header
	puts "The students of my cohort at Makers Academy"
	puts "----------------"
end

def print(names)
	names.each do |name|
		puts name
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

print_header
print(students)
print_footer(students)
