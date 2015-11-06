class ArticlesController < ApplicationController
  include ArticlesHelper

  # lists all tidbits
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    # @comment = Comment.new
    # @comment.article_id = @article.id
  end

  # new tidbit form
  def new
    @article = Article.new
  end

  # posts tidbit
  def create
    @article = Article.new(article_params)
    @article.user_id = current_user.id

    if @article.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  # prefilled tidbit
  def edit
    @user = User.find(params[:user_id])
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to user_path(current_user)
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to user_path(current_user)
  end



end
