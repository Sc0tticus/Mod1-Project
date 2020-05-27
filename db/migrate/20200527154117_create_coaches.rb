class CreateCoaches < ActiveRecord::Migration[6.0]
  def change
    create_table :coaches do |t|
      t.string :name
      t.integer :age
      t.integer :years_as_head_coach
    end
  end
end


