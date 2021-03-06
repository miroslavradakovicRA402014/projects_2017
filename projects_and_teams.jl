#!/usr/bin/env julia
###############################################################################

type Student
	name::AbstractString
	surname::AbstractString
	index::AbstractString
	email::AbstractString
	points::Int
end

type Team
	members::Vector{Student}
end

typealias URL AbstractString
type Spec
	text::AbstractString
	resources::Vector{URL}
end

type Solution
	repo::URL
	# Short youtube presentation.
	youtube::URL
	# download.bit HW+SW
	# Could set URL to file in github master blob.
	release_bit::URL
	# Short project documentation.
	# Could set URL to file in github master blob.
	doc::URL
end

type Project
	name::AbstractString
	points::Int
	min_team_members::Int
	team::Team
	spec::Spec
	solution::Solution
	done::Bool
end


###############################################################################

projects = Project[
	Project(
		"麻将 – Mahjong",
		45,
		4,
		Team(
			Student[
				Student(
					"Ime",
					"Prezime",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Skočko",
		40,
		3,
		Team(
			Student[
				Student(
					"Predrag",
					"Sladek",
					"RA-48/2014",
					"pedjasladek@gmail.com",
					0
				),
			]
			
			Student[
				Student(
					"Stefan",
					"Masalusić",
					"RA-193/20Y14",
					"masalusicstefan@gmail.com",
					0
				),
			]
			
			Student[
				Student(
					"Nedeljko",
					"Mutlak",
					"RA-28/2014",
					"nedeljkomutlak@gmail.com",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Super Mario",
		45,
		4,
		Team(
			Student[
				Student(
					"Jelena"
					"Jovičić"
					"RA-127/2014"
					"jjovicic13@hotmail.rs"
					0
				),
			]
			Student[
				Student(
					"Mia"
					"Stepanović"
					"RA-129/2014"
					"miastepanovic19@gmail.com"
					0
				),
			]
			Student[
				Student(
					"Aleksandar"
					"Lazić"
					"RA-104/2014"
					"lazic.aleksandar11@gmail.com"
					0
				),
			]
			Student[
				Student(
					"Stefan"
					"Vukanović"
					"RA-210/2014"
					"stefan.vukanovic@hotmail.com"
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"2D framebuffer-less GPU",
		45,
		3,
		Team(
			Student[
				Student(
					"Ime",
					"Prezime",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/djole995/FBless_2D_GPU/tree/master/pcores/fb_less_2d_gpu_periph_v1_00_a",
			URL(""),
			URL(""),
			"https://github.com/djole995/FBless_2D_GPU/blob/master/pcores/fb_less_2d_gpu_periph_v1_00_a/dokumentacija-LPRS2.docx"
		),
		false
	),
	Project(
		"Tap That Cat with Colors",
		45,
		3,
		Team(
			Student[
				Student(
					"Ime",
					"Prezime",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Pie with Rationals",
		40,
		3,
		Team(
			Student[
				Student(
					"Ime",
					"Prezime",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Dimmer",
		45,
		3,
		Team(
			Student[
				Student(
					"Ime",
					"Prezime",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Buzzer syntesizer",
		40,
		4,
		Team(
			Student[
				Student(
					"Robert",
					"Šandor",
					"RA-17/2014",
					"robert.sandor@outlook.com",
					0
				),
				Student(
					"Filip",
					"Dutina",
					"RA-43/2014",
					"xxx@yyy",
					0
				),
				Student(
					"Aleksandar",
					"Jurica",
					"RA-47/2014",
					"jurica.aleksandar@gmail.com",
					0
				),
				Student(
					"Milan",
					"Vidić",
					"RA-241/2015",
					"milan_vidic000@yahoo.com",
					0
				)
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Pacmen",
		40,
		3,
		Team(
			Student[
				Student(
					"Ime",
					"Prezime",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Bilinear Interpolation Co-processor",
		45,
		4,
		Team(
			Student[
				Student(
					"Ime",
					"Prezime",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"CAN network – game of choice",
		45,
		4,
		Team(
			Student[
				Student(
					"Aleksa",
					"Corovic",
					"RA-54/2014",
					"aleksa.corovic@systemli.com",
					0
				),
				Student(
					"Mihailo",
					"Stojanovic",
					"RA-26/2014",
					"mihailo.stojanovic26@gmail.com",
					0
				),
				Student(
					"Stevan",
					"Stevic",
					"RA-63/2014",
					"stevan.stevic4343@gmail.com",
					0
				),
				Student(
					"Marko",
					"Dragojevic",
					"RA-74/2014",
					"marko.godra@gmail.com",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"DMA",
		40,
		2,
		Team(
			Student[
				Student(
					"Ime",
					"Prezime",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Flipper",
		45,
		3,
		Team(
			Student[
				Student(
					"Ime",
					"Prezime",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Breakout",
		40,
		3,
		Team(
			Student[
				Student(
					"Mila",
					"Kotur",
					"RA-128/2014",
					"milakotur@gmail.com",
					0
				),
				Student(
					"Marijana",
					"Zelic",
					"RA-208/2014",
					"makizelic@gmail.com",
					0
				),
				Student(
					"Sandra",
					"Tripkovic",
					"RA-29/2014",
					"tripkovic.s95@gmail.com",
					0
				)
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Galaga",
		45,
		4,
		Team(
			Student[
				Student(
					"Ime",
					"Prezime",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Tenkići",
		40,
		3,
		Team(
			Student[
				Student(
					"Vuletic",
					"Milan",
					"RA-237/2013",
					"mixa4@live.com",
					0
				),
				Student(
					"Ercegovcevic",
					"Luka",
					"RA-165/2014",
					"erceg-95@hotmail.com",
					0
				),
				Student(
					"Egelja",
					"Maksim",
					"RA-51/2014",
					"maksimdavid@gmail.com",
					0
				)
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Asteroids",
		40,
		3,
		Team(
			Student[
				Student(
					"Vladimir",
					"Lazic",
					"RA-57/2014",
					"ironmanm72@gmail.com",
					0
				),
				Student(
					"Srdjan",
					"Suvakov",
					"RA-174/2014",
					"suvakov.srdjan@gmail.com",
					0
				),
				Student(
					"Stefan",
					"Nicetin",
					"RA-188/2014",
					"niketic95@gmail.com",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Dig Dug",
		40,
		4,
		Team(
			Student[
				Student(
					"Miljan",
					"Vajagic",
					"RA-229/2014",
					"miljanzr@yahoo.com",
					0
				),
			],
			Student[
				Student(
					"Milan",
					"Trkulja",
					"RA-227/2014",
					"milantrkulja995@gmail.com",
					0
				),
			],
			Student[
				Student(
					"Lara",
					"Milovanovic",
					"RA-229/2014",
					"miljanzr@yahoo.com",
					0
				),
			],
			Student[
				Student(
					"Lazar",
					"Svonja",
					"RA-229/2014",
					"miljanzr@yahoo.com",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
]

additional = URL[
	# Making bit file.
	"https://www.youtube.com/watch?v=RBa6gx5Mx5c",
	# Presentations.
	#TODO
]

###############################################################################

function no_of_students(project::Project)
	if project.team.members[1].name == "??"
		return 0
	else
		return length(project.team.members)
	end
end
N_students = sum(map(no_of_students, projects))
@show N_students

function project_taken(project::Project)
	!any(map((member) -> member.name == "??", project.team.members))
end

for project in projects
	if !project.done && project_taken(project)
		println("Not done: ", project.name)
	end
end

###############################################################################
