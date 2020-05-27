require 'pry'
Player.destroy_all
Team.destroy_all
Coach.destroy_all

Player.create(name: "Nathan McKinnon", age: 29, position: "Forward",avg_num_points: 30, team: "Avalanche")



binding.pry
