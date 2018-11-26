class MemberFacade
  def members(chamber, state)
    pro_publica_members_service.state_members_data(chamber, state).map do |members_data|
      ChamberMember.new(members_data)
    end
  end

  def member(member_id)
    pro_publica_members_service.member_data(member_id).map do |member_data|
      IndividualMember.new(member_data)
    end
  end

  private

  def pro_publica_members_service
    ProPublicaMemberService.new
  end
end
