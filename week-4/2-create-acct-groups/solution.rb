cohort = ["Aarthi Sarode", "Alex Szabo", "Alfred Calayag", "Amir Beheshtaein", "Anna Wu", "Anthony Ng", "Brandon Graham", "Brittney Marie Hodson", "CM Lotta", "Charles Kim", "David Kim", "Davide Curletti", "Derek Tang", "Devin Liu", "Devon Estes", "Enja Reyes", "Forrest Venable", "Gabrielle Chua", "J.H. Kevin Xu", "James Fallon", "Jasmeet Chatarath", "Jesse Germinario", "Juan Gomez", "Karen Lo", "Kevin Maze", "Kevin Xu", "Lance Tipton", "Leonard Bui", "Leyla Movahedi", "Liorr Morrison", "Mack McLean", "Mark Pfeffer", "Mark Reid", "Michael Christe", "Michelle Park", "Paul Yu", "Peter Brown", "Peter Fitzpatrick", "Philip Riley", "Quynh Chen", "Ram Ramakirishna", "Richard McCluskey", "Ryan Urie", "Sean Marman", "Stephen Brooks Clem", "Steve Zimmerman", "Thomas Yazmia", "Tina White", "Vincent Colavin", "Sagar Singh" ]

#print cohort.count

def group_assignments()
	cohort = ["Aarthi Sarode", "Alex Szabo", "Alfred Calayag", "Amir Beheshtaein", "Anna Wu", "Anthony Ng", "Brandon Graham", "Brittney Marie Hodson", "CM Lotta", "Charles Kim", "David Kim", "Davide Curletti", "Derek Tang", "Devin Liu", "Devon Estes", "Enja Reyes", "Forrest Venable", "Gabrielle Chua", "J.H. Kevin Xu", "James Fallon", "Jasmeet Chatarath", "Jesse Germinario", "Juan Gomez", "Karen Lo", "Kevin Maze", "Kevin Xu", "Lance Tipton", "Leonard Bui", "Leyla Movahedi", "Liorr Morrison", "Mack McLean", "Mark Pfeffer", "Mark Reid", "Michael Christe", "Michelle Park", "Paul Yu", "Peter Brown", "Peter Fitzpatrick", "Philip Riley", "Quynh Chen", "Ram Ramakirishna", "Richard McCluskey", "Ryan Urie", "Sean Marman", "Stephen Brooks Clem", "Steve Zimmerman", "Thomas Yazmia", "Tina White", "Vincent Colavin", "Sagar Singh" ]
	cohort.shuffle!
	g1 = cohort[0..3]
	g2 = cohort[4..7]
	g3 = cohort[8..11]
	g4 = cohort[12..15]
	g5 = cohort[16..19]
	g6 = cohort[20..23]
	g7 = cohort[24..27]
	g8 = cohort[28..31]
	g9 = cohort[32..35]
	g10 = cohort[36..39]
	g11 = cohort[40..43]
	g12 = cohort[44..47]
	g13 = cohort[48..-1]

	puts "Group 1 is #{g1}"
	puts "Group 2 is #{g2}"
	puts "Group 3 is #{g3}"
	puts "Group 4 is #{g4}"
	puts "Group 5 is #{g5}"
	puts "Group 6 is #{g6}"
	puts "Group 7 is #{g7}"
	puts "Group 8 is #{g8}"
	puts "Group 9 is #{g9}"
	puts "Group 10 is #{g10}"
	puts "Group 11 is #{g11}"
	puts "Group 12 is #{g12}"
	puts "Group 13 is #{g13}"
end

group_assignments()



