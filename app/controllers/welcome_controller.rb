class WelcomeController < ApplicationController
  def show
    @user = params[:user_name]
  end
end
