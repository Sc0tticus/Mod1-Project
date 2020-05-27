class Coach < ActiveRecord::Base 
    has_many :teams
    has_many :players, through: :teams
end

=begin
class Team < ActiveRecord::Base 
    belongs_to :coach
    belongs_to :player
end

class Player < ActiveRecord::Base 
    has_many :teams
    has_many :coaches, through: :teams
end
=end


