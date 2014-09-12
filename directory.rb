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

#using the .each method to print each name.
students.each do |student|
	puts student
end

#Chaning print total to work off the student array.
puts "Overall, we have #{students.length} great students."

