class JoinsController < ApplicationController

  before_action :authenticate_user!

  def create
    @join = Join.new
    @idea = Idea.find params[:idea_id]
    @join.idea = @idea
    @join.user = current_user
    if @join.save
      redirect_to ideas_path
    else
      redirect_to idea_path(@idea)
    end
  end

  def destroy
    @idea = Idea.find params[:idea_id]
    @join = current_user.joins.find params[:id]
    @join.destroy
    redirect_to ideas_path
  end


end
