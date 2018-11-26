class NewsApiArticleService
  def articles(first_name, last_name)
    get_json("/v2/everything?q=#{first_name}+#{last_name}&sortBy=publishedAt&apiKey=#{ENV['news_api_key']}")[:articles]
  end

  private

  def conn
    Faraday.new(url: 'https://newsapi.org') do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end

  def get_json(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end
end
