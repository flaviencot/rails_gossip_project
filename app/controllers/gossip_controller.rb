class GossipController < ApplicationController

  def index
    @all_gossips = Gossip.all
    @all_users = User.all
  end

  def new
    @gossip = Gossip.new
  end
  
  def create
    @gossip = Gossip.new('user_id' => User.all.sample.id,
                   'title' => params[:title],
                   'content' => params[:content])
    #@gossip.user = User.find_by(id: session[:user_id])
    if @gossip.save
      redirect_to root_path(success: true)
    else
      render :new
    end
  end

  def edit
    @gossip = Gossip.find(params[:id].to_i)
  end

  def show
    @current_gossip = Gossip.find(params[:id].to_i)
  end

  def update
      @gossip = Gossip.find(params[:id])
      if @gossip.update('user_id' => User.all.sample.id,'title' => params[:title],'content' => params[:content])
        redirect_to @gossip
      else
        render :edit
      end
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to root_path
  end

end

