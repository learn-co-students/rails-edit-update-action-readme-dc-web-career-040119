class ArticlesController < ApplicationController


  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)
    redirect_to @article
  end

    # add edit and update methods here
  def edit
    @article = Article.find(params[:id])
  end
  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    @article.save
    redirect_to @article

  end


  private
  def article_params
    params.require(:article).permit(:title, :description)
  end
end
