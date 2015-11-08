class CommentsController < ApplicationController
  include CommentsHelper

  def index
    @comments = Comment.all
  end

  # creates new comment in comment form (in individual tidbit view)
  def new
    @comment = Comment.new
  end

  # posts new comment on individual tidbit
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new(comment_params)
    
    redirect_to "/users/#{current_user.id}/articles/#{@article.id}"
  end

end
