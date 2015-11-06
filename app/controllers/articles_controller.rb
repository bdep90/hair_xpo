class ArticlesController < ApplicationController

  # lists user tidbits
  def index
    @user = current_user
    @user_articles = @user.articles
  end

  def show
    @article = Article.find_by(params[:article_id])
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

    if @article.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  # prefilled tidbit
  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to user_path(current_user)
  end

  private

  def article_params
    params.require(:article).permit(
    :name,
    :image1,
    :image2,
    :image3,
    :caption1,
    :caption2,
    :caption3,
    :video
    )
  end

end
