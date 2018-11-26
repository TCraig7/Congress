class Article
  attr_reader     :source_name,
                  :author,
                  :title,
                  :description,
                  :url,
                  :image_url,
                  :published_at
                  
  def initialize(article_data)
    @source_name = article_data[:source][:name]
    @author = article_data[:author]
    @title = article_data[:title]
    @description = article_data[:description]
    @url = article_data[:url]
    @image_url = article_data[:urlToImage]
    @published_at = article_data[:publishedAt]
  end
end
