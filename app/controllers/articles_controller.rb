class ArticlesController < ApplicationController

  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def new

  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    @article.save

    # works
    # redirect_to article_path(@article.id)

    # also works
    # redirect_to article_path(@article)

    # also works - shortcut
    redirect_to @article
  end
end
