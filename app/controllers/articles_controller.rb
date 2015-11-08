class ArticlesController < ApplicationController
  include ArticlesHelper

  # lists all tidbits
  def index
    @articles = Article.all
  end

  # find specific tidbit
  def show
    @user = current_user
    @user_articles = @user.articles
    @article = Article.find(params[:id])
    @comment = Comment.new
    @comment.article_id = @article.id
    @article_comments = @article.comments
  end

  # new tidbit form
  def new
    @article = Article.new
  end

  # posts tidbit to profile
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
      redirect_to "/users/#{current_user.id}/articles/#{@article.id}"
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
