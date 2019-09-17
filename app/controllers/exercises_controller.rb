# frozen_string_literal: true

class ExercisesController < ApplicationController
  def show
    @workout = Workout.find(params[:id])
  end

  def new
    @exercise = Exercise.new
    @workout_id = params[:workout_id]
  end

  def create
    puts params
    @exercise = Exercise.new(exercise_params)
    @exercise.save
    @exercise_workout = ExerciseWorkout.new(workout_id: params[:workout_id], exercise_id: @exercise.id)
    @exercise_workout.save
    redirect_to exercise_path(params[:workout_id])
  end

  private

  def exercise_params
    params.require(:exercise).permit(:title, :description, :repetitions, :sets, :rest_period)
  end
end
