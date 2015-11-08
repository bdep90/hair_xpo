class CommentsController < ApplicationController
  include CommentsHelper

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new(comment_params)

    if @comment.save
      redirect_to "/users/#{current_user.id}/articles/#{@article.id}"
    else
      render :new
    end
  end

end
