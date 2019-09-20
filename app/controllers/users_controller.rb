# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :is_admin
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

  private
  
  def is_admin
    @user = current_user
    admins = ["schroederkevin94@gmail.com"]
    admins.each do |admin|
      @user.admin = true if @user.email == admin
      @user.save
    end
  end
end
