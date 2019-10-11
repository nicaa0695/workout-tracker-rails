class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.datetime :date
      t.string :training
      t.string :mood
      t.string :length

      t.timestamps
    end
  end
end
