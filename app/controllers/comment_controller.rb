class CommentController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @current_gossip = Gossip.find(params[:gossip_id].to_i)
    @comment = Comment.new(
      'user_id' => User.all.sample.id,
      'gossip_id' => @current_gossip.id,
      'content' => params[:content]
    )
    puts params
    if @comment.save
      redirect_to gossip_path(@current_gossip)
    else
      render :new
    end
  end

  def edit
    @current_gossip = Gossip.find(params[:gossip_id].to_i)
    @current_comment = @current_gossip.comments.find(params[:id].to_i)
  end

  def update
    @current_gossip = Gossip.find(params[:gossip_id].to_i)
    @current_comment = @current_gossip.comments.find(params[:id].to_i)
    comment_params = params.permit(:content)
    if @current_comment.update(comment_params)
      redirect_to gossip_path(@current_gossip)#(:update_success)
    else
      redirect_to gossip_path()#(:update_failed)
    end
  end

  def destroy
    @current_gossip = Gossip.find(params[:gossip_id].to_i)
    @current_comment = @current_gossip.comments.find(params[:id].to_i)
    if @current_comment.destroy
      redirect_to gossip_path(@current_gossip)
    else
      redirect_to root_path()
    end
  end
end