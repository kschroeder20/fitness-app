class ApplicationController < ActionController::Base
  before_action :authenticate_user! # before any action from UI, make sure the user is authenticated
end
