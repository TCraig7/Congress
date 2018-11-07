require 'rails_helper'

describe MemberFacade do
  it 'exists' do
    chamber = "house"
    state = "CO"
    member_facade = MemberFacade.new(chamber, state)

    expect(member_facade).to be_a(MemberFacade)
  end

  it 'has members' do
    VCR.use_cassette('member_facade_has_members') do
      chamber = "house"
      state = "CO"
      member_facade = MemberFacade.new(chamber, state)

      expect(member_facade.members.count).to eq(7)
      expect(member_facade.members).to be_a(Array)
      expect(member_facade.members.first).to be_a(Member)
      expect(member_facade.members.last).to be_a(Member)
    end
  end
end
