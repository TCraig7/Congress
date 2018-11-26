class ArticlesFacade
  def articles(first_name, last_name)
    news_api_articles_service.articles(first_name, last_name).map do |article|
      Article.new(article)
    end
  end

  private

  def news_api_articles_service
    NewsApiArticleService.new
  end
end
