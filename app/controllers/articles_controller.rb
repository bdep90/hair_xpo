class ArticlesController < ApplicationController

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

    if @article.save
      redirect_to @user
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
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to user_path(@user)
  end

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
