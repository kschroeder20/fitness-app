# frozen_string_literal: true

class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :title
      t.text :description
      t.string :repetitions
      t.string :sets
      t.string :example_url
      t.string :rest_period
    end
  end
end
