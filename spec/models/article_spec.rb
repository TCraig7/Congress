require 'rails_helper'

describe Article, type: :model do
  before(:each) do
    article_data = {source: {id: 'null',
                             name: 'NYT.com'},
                    author: 'Bob Ross',
                    title: 'How to Paint',
                    description: 'A painting guide',
                    url: 'url.com',
                    urlToImage: 'imageurl.com',
                    publishedAt: '2018-11-23'
                  }
    @article = Article.new(article_data)
  end

  it 'exists' do
    expect(@article).to be_a(Article)
  end

  it 'has attributes' do
    expect(@article.source_name).to eq('NYT.com')
    expect(@article.author).to eq('Bob Ross')
    expect(@article.title).to eq('How to Paint')
    expect(@article.description).to eq('A painting guide')
    expect(@article.url).to eq('url.com')
    expect(@article.image_url).to eq('imageurl.com')
    expect(@article.published_at).to eq('2018-11-23')
  end
end
