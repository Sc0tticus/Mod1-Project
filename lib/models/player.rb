class Player < ActiveRecord::Base 
    has_many :teams
    has_many :coaches, through: :teams
end
