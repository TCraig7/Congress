class MemberFacade
  def members(chamber, state)
    pro_publica_members_service.state_members_data(chamber, state).map do |members_data|
      ChamberMember.new(members_data)
    end
  end

  def member(member_id)
    IndividualMember.new(pro_publica_members_service.member_data(member_id))
  end

  private

  def pro_publica_members_service
    ProPublicaMemberService.new
  end
end
