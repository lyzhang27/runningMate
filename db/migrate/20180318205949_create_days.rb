class CreateDays < ActiveRecord::Migration[5.1]
  def change
    create_table :days do |t|
      t.date :date
      t.string :activity
      t.integer :distance
      t.integer :duration

      t.timestamps
    end
  end
end
