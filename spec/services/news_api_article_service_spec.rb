require 'rails_helper'

describe NewsApiArticleService do
  it 'exists' do
    news = NewsApiArticleService.new

    expect(news).to be_a(NewsApiArticleService)
  end

  it 'returns articles' do
    VCR.use_cassette('news_api_articles') do
      news = NewsApiArticleService.new
      first_name = 'diana'
      last_name = 'degette'

      response = news.articles(first_name, last_name)
      
      expect(response).to be_a(Array)
    end
  end
end
