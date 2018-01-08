class LikesController < ApplicationController

  before_action :authenticate_user!

  def create
    @like = Like.new
    @idea = Idea.find params[:idea_id]
    @like.idea = @idea
    @like.user = current_user
    if @like.save
      redirect_to ideas_path
    else
      redirect_to idea_path(@idea)
    end
  end

  def destroy
    @idea = Idea.find params[:idea_id]
    @like = current_user.likes.find params[:id]
    @like.destroy
    redirect_to ideas_path
  end


end
