class MemberFacade
  def initialize(chamber, state)
    @chamber = chamber
    @state = state
  end

  def members
    pro_publica_member_service.member_data(@chamber, @state).map do |member_data|
      Member.new(member_data)
    end
  end

  private

  def pro_publica_member_service
    ProPublicaMemberService.new
  end
end
