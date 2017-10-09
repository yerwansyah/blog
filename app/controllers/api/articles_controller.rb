class Api::ArticlesController < ApiController

  before_action :set_article, only: [:edit, :update, :show, :destroy]

  def index
    @articles = Article.all
    json_response(@articles)
  end

  def show
    json_response(@article, :ok)
  end

  def create
    @article = Article.create!(article_params)

    json_response(@article, :ok)
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :description)
  end
end
