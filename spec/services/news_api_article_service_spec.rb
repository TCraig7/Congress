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
      expect(response[0]).to have_key(:source)
      expect(response[0]).to have_key(:author)
      expect(response[0]).to have_key(:title)
      expect(response[0]).to have_key(:description)
      expect(response[0]).to have_key(:url)
      expect(response[0]).to have_key(:urlToImage)
      expect(response[0]).to have_key(:publishedAt)
    end
  end
end
