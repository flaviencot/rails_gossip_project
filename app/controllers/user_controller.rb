class UserController < ApplicationController
  def index
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
    @current_user = User.find(params[:id].to_i)
  end

  def update
  end

  def destroy
  end
end
