require 'pry'
Player.destroy_all
Team.destroy_all
Coach.destroy_all

team1 = Team.create(team_name: "Aurora Aces", location: "Aurora", stadium: "Big Bear Arena", division: "East")
team2 = Team.create(team_name: "Boulder Blizzards", location: "Boulder", stadium:"Folsom Field", division:"West")
team3 = Team.create(team_name: "Colorado Springs Cave Dwellers", location:"Colorado Springs", stadium:"Air Force Stadium", division: "South")
team4 = Team.create(team_name: "Fort Collins Freakshow", location: "Fort Collins", stadium: "Canvas Stadium", division: "North")

coach1 = Coach.create(name: "Jesse Pope", age: 22, years_as_coach: 3, team: team1)
coach2 = Coach.create(name: "Ahmed Gaber", age: 26, years_as_coach: 4, team: team2)
coach3 = Coach.create(name: "Damon Chivers", age: 27,years_as_coach:  1, team: team3)
coach4 = Coach.create(name: "Brian Firooz ", age: 29, years_as_coach: 7, team: team4)

austin = Player.create(name: "Austin Evans", age: 28, position:"Right Wing", avg_num_points: 2.0, team: team1)
scott = Player.create(name: "Scott Singer", age: 26, position: "Center", avg_num_points: 2.0, team: team1)
andrew = Player.create(name: "Andrew Hawley", age: 25, position: "Defense", avg_num_points: 0.8, team: team1)
kyle = Player.create(name: "Kyle Petersen", age: 25, position: "Left Wing", avg_num_points: 1.8, team: team1)
chris = Player.create(name: "Chris Banta", age: 33, position: "Defense", avg_num_points: 0.6, team: team1)
ben = Player.create(name: "Ben Rowe", age: 23, position: "Right Wing", avg_num_points: 1.8, team: team2)
bob = Player.create(name: "Bob Whitmer", age: 31, position: "Defense", avg_num_points: 0.2, team: team2)
brook = Player.create(name:"Brook Beyene", age: 26, position: "Left Wing", avg_num_points: 1.3, team: team2)
bryce = Player.create(name: "Bryce Kennedy", age: 29, position: "Defense", avg_num_points: 0.5, team: team2)
carlos = Player.create(name:"Carlos Fernandez", age: 26, position: "Center", avg_num_points: 1.8, team: team2)
haley = Player.create(name: "Haley Raley", age: 23, position: "Right Wing", avg_num_points: 1.9, team: team3)
jordan = Player.create(name: "Jordan Buysse", age: 28, position: "Left Wing", avg_num_points: 1.2, team: team3)
logan = Player.create(name: "Logan McGuire", age: 25, position: "Center", avg_num_points: 1.0, team: team3)
lynn = Player.create(name: "Lynn Amsbury", age: 30, position: "Defense", avg_num_points: 0.4, team: team3)
matt = Player.create(name: "Matthew Malecki", age: 32, position: "Defense", avg_num_points: 1.9, team: team3)
beanie = Player.create(name: "Beanie Brady", age: 40, position: "Defense", avg_num_points: 0.9, team: team4)
jon = Player.create(name: "Jon Higgins", age: 30, position: "Defense", avg_num_points: 0.7, team: team4)
ashley = Player.create(name: "Ashley Winters", age: 29, position: "Right Wing", avg_num_points: 1.7, team: team4)
david = Player.create(name: "David Fertitta", age: 32, position: "Left Wing", avg_num_points: 1.8, team: team4)
kyle = Player.create(name: "Kyle Coberly", age: 32, position: "Center", avg_num_points: 1.1, team: team4)

binding.pry