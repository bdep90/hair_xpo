module ArticlesHelper

  def article_params
    params.require(:article).permit(
    :name,
    :img1,
    :img2,
    :img3,
    :cap1,
    :cap2,
    :cap3,
    :vid
    )
  end

end
