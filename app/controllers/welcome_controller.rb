# frozen_string_literal: true

class WelcomeController < ApplicationController
  def index
    if current_user.email == "schroederkevin94@gmail.com"
      current_user.admin = true
    end
  end
end
