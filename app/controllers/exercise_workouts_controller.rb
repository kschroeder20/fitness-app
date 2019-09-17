# frozen_string_literal: true

class ExerciseWorkoutsController < ApplicationController
  def new
    @exercise = Exercise.new
  end
  
  def create

    # exercise = exercise.find_by_ticker(params[:exercise])
    # puts exercise
    # if exercise.blank?
    #   exercise = Exercise.new_from_lookup(params[:exercise])
    #   exercise.save
    # end
    # @exercise_workout = ExerciseWorkout.create(user: current_user, exercise: exercise)
    # flash[:success] = "Exercise #{@exercise_workout.title} was successfully added to profile"
    # redirect_to my_profile_path
  end

  def destroy
    exercise = Exercise.find(params[:exercise_id])
    workout = Workout.find(params[:workout_id])
    @exercise_workout = ExerciseWorkout.where(exercise_id: exercise.id, workout_id: workout.id).first
    @exercise_workout.destroy
    flash[:notice] = 'Exercise was successfully removed from portfolio'
    redirect_to exercise_path(workout.id)
  end
end
