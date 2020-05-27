class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :team_name
      t.string :name
      t.integer :age
      t.string :position
      t.integer :avg_num_points
    end
  end
end
