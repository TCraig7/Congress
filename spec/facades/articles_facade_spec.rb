require 'rails_helper'

describe ArticlesFacade do
  it 'exists' do
    articles_facade = ArticlesFacade.new
    expect(articles_facade).to be_a(ArticlesFacade)
  end

  it 'has articles' do
    VCR.use_cassette('articles_facade_articles') do
      first_name = 'diana'
      last_name = 'degette'

      articles_facade = ArticlesFacade.new

      expect(articles_facade.articles(first_name, last_name)).to be_a(Array)
      expect(articles_facade.articles(first_name, last_name).first).to be_a(Article)
      expect(articles_facade.articles(first_name, last_name).last).to be_a(Article)
    end
  end
end
