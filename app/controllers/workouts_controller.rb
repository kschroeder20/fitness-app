# frozen_string_literal: true

class WorkoutsController < ApplicationController
  def show
    @workout = Workout.find(params[:id])
  end
end
