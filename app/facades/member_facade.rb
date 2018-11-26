class MemberFacade
  def members(chamber, state)
    pro_publica_members_service.state_members_data(chamber, state).map do |members_data|
      ChamberMember.new(members_data)
    end
  end

  def member(member_id)
    IndividualMember.new(pro_publica_members_service.member_data(member_id))
  end

  def articles(first_name, last_name)
    news_api_articles_service.articles(first_name, last_name).map do |article|
      Article.new(article)
    end
  end

  private

  def pro_publica_members_service
    ProPublicaMemberService.new
  end

  def news_api_articles_service
    NewsApiArticleService.new
  end
end
