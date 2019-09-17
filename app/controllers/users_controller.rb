# frozen_string_literal: true

class UsersController < ApplicationController
  def my_profile
    @user = current_user
    @user_workouts = current_user.workouts
  end

  def show_clients
    @users = User.all
  end

  def show_client_workouts
   @user = User.find(params[:user_id])
   @user_workouts = @user.workouts
  end

  def remove_client
    @user = User.find(params[:user_id])
    @user.destroy
  end

end
