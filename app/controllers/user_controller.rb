class UserController < ApplicationController

  
  def index
  end

  def create
    @user = User.new(
                   'first_name' => params[:first_name],
                   'last_name' => params[:last_name],
                   'email' => params[:email],
                   'password' => params[:password],
                   'city_id' => params[:city_id].to_i
                   )
    if @user.save
      session[:user_id] = user.id
      redirect_to root_path(success: true)
    else
      render :new
    end
  end

  def new
    @user = User.new
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
