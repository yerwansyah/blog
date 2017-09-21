class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to_articles_show(@article)
  rescue Exception => e
    render e.message
  end

  private

  def article_params
    params.require(:article).permit(:title, :description)
  end
end
