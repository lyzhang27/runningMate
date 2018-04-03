class CreateWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_table :workouts do |t|
      t.date :date
      t.string :activity
      t.decimal :distance
      t.integer :duration

      t.timestamps
    end
  end
end