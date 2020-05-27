class Coach < ActiveRecord::Base 
    #has_many :teams
    #has_many :players, through: :teams
    belongs_to :team
end



