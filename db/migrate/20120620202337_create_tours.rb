class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.integer :user_id
      t.string :title
      t.string :description
      t.integer :min_capacity
      t.integer :max_capacity
      t.string :equipement_required
      t.integer :difficulty_level
      t.integer :activity_id
      t.integer :duration
      t.time :starting_time
      t.string :meeting_point
      t.date :available_from
      t.date :available_to

      t.timestamps
    end
  end
end
