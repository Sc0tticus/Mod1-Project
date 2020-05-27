class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :team_name
      t.references :coach
      t.references :player
      t.string :location
      t.string :stadium
    end
  end
end

