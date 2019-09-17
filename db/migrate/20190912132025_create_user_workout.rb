# frozen_string_literal: true

class CreateUserWorkout < ActiveRecord::Migration[5.2]
  def change
    create_table :user_workouts do |t|
      t.references :workout, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
