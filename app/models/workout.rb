# frozen_string_literal: true

class Workout < ApplicationRecord
  has_many :exercise_workouts
  has_many :user_workouts
  has_many :users, through: :user_workouts
  has_many :exercises, through: :exercise_workouts
end
