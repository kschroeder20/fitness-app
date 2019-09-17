# frozen_string_literal: true

class UserWorkout < ApplicationRecord
  belongs_to :workout
  belongs_to :user
end
