class CityController < ApplicationController

  def index
  end

  def show
    def show
      @current_city = City.find(params[:id].to_i)
    end
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
