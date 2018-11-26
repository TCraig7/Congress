require 'rails_helper'

describe 'Articles API' do
  it 'displays articles' do
    VCR.use_cassette('articles_controller') do
      get '/api/v1/articles?first_name=diana&last_name=degette'

      expect(response.status).to eq(200)

      articles = JSON.parse(response.body, symbolize_names: true)

      expect(articles).to be_a(Array)
      expect(articles.first).to have_key(:source_name)
      expect(articles.first).to have_key(:author)
      expect(articles.first).to have_key(:title)
    end
  end
end
