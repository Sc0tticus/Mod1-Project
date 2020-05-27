class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :team
      t.string :location
      t.string :stadium
      t.string :division
    end
  end
end

