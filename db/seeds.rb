require 'pry'
Player.destroy_all
Team.destroy_all
Coach.destroy_all

#Player.create(name: "Nathan McKinnon", age: 29, position: "Forward",avg_num_points: 30, team: "Avalanche")
coach1 = Coach.create(team_name: "Avalanche", name: "Jesse Pope",  years_as_coach: 3)
coach2 = Coach.create(team_name: "Senators",name: "Ahmed Gaber",  years_as_coach: 4)
coach3 = Coach.create(team_name: "Wild", name: "Damon Chivers", years_as_coach:  1)
coach4 = Coach.create(team_name: "Maple Leafs",name: "Brian Firooz ",  years_as_coach: 7)

team1 = Team.create(team_name: "Avalanche", location: "Denver", stadium: "Pepsi Center")
team2 = Team.create(team_name: "Senators", location: "Ottawa", stadium: "Senators Stadium")
team3 = Team.create(team_name: "Wild", location: "Minneapolis", stadium: "Wild Stadium")
team4 = Team.create(team_name: "Maple Leafs", location: "Toronto", stadium: "Leafs Stadium")


player1 = Player.create(team_name: "Avalanche", name: "Scott Singer", age: 22, position: "Forward",avg_num_points: 50)
player2 = Player.create(team_name: "Senators", name: "Bryce Kennedy", age: 23, position: "Goalie",avg_num_points: 0)
player3 = Player.create(team_name: "Wild", name: "Austin Evans", age: 24, position: "Goalie",avg_num_points: 30)
player4 = Player.create(team_name: "Maple Leafs", name: "Lynn Amsbury", age: 24, position: "Defender",avg_num_points: 20)

binding.pry
=begin
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



#team = name: string, location: string, stadium: string, division: string


=begin
class CreateTeams < ActiveRecord::Migration[6.0]
    def change
      create_table :teams do |t|
        t.references :coach
        t.references :player
        #t.string :name
        #t.string :location
        #t.string :stadium
        #t.string :division
        #t.references :coach
      end
    end
  end
=end
  
=begin
team1 = Team.create(name: "Aurora Aces", location: "Aurora", stadium: "Big Bear Arena", division: "East")
team2 = Team.create(name: "Boulder Blizzards", location: "Boulder", stadium:"Folsom Field", division:"West")
team3 = Team.create(name: "Colorado Springs Cave Dwellers", location:"Colorado Springs", stadium:"Air Force Stadium", division: "South")
team4 = Team.create(name: "Fort Collins Freakshow", location: "Fort Collins", stadium: "Canvas Stadium", division: "North")
=end