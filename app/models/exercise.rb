# frozen_string_literal: true

class Exercise < ApplicationRecord
  has_many :exercise_workouts
  has_many :workouts, through: :exercise_workouts
end
