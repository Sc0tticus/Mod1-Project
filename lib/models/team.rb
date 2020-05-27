class Team < ActiveRecord::Base 
    #belongs_to :coach
    #belongs_to :player
    has_many :coaches
    has_many :players
end
