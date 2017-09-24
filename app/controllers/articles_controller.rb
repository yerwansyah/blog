class ArticlesController < ApplicationController

  before_action :set_article, only: [:edit, :update, :show, :destroy]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def edit

  end

  def create
    @article = Article.new(article_params)

    if @article.save
      flash[:notice] = "Article was successfully created"
      redirect_to article_path(@article)
    else
      render 'new'
    end
  rescue StandardError
    flash[:notice] = "Error when creating new article"
    render 'new'
  end

  def update
    if @article.update(article_params)
      flash[:notice] = "Article was successfully updated"
      redirect_to article_path(@article)
    else
      render 'edit'
    end
  rescue StandardError
    flash[:notice] = "Error when updating article"
    render 'edit'
  end

  def show

  end

  def destroy
    if @article.destroy
      flash[:notice] = "Article was successfully deleted"
    else
      flash[:notice] = "Article can't be deleted"
    end
    redirect_to articles_path
  rescue StandardError
    flash[:notice] = "Error when deleting article"
    redirect_to articles_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :description)
  end
end
