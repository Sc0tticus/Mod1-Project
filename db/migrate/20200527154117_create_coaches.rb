class CreateCoaches < ActiveRecord::Migration[6.0]
  def change
    create_table :coaches do |t|
      t.string :team_name
      t.string :name
      t.integer :years_as_coach
    end
  end
end


