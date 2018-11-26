class Api::V1::ArticlesController < ApplicationController
  def index
    render json: articles_facade.articles(params[:first_name], params[:last_name])
  end

  private

  def articles_facade
    ArticlesFacade.new
  end
end
