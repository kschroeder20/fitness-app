# frozen_string_literal: true

class UserWorkoutsController < ApplicationController
  def create
    workout = Workout.find_by_ticker(params[:workout])
    if workout.blank?
      workout = Workout.new_from_lookup(params[:workout])
      workout.save
    end
    @user_workout = UserWorkout.create(user: current_user, workout: workout)
    flash[:success] = "Workout #{@user_workout.title} was successfully added to profile"
    redirect_to my_profile_path
  end

  def destroy
    workout = Workout.find(params[:id])
    @user_workout = UserWorkout.where(user_id: current_user.id, workout_id: workout.id).first
    @user_workout.destroy
    flash[:notice] = 'Workout was successfully removed from portfolio'
    redirect_to my_profile_path
  end
end
