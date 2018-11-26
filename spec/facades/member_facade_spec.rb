require 'rails_helper'

describe MemberFacade do
  it 'exists' do
    chamber = "house"
    state = "CO"
    member_facade = MemberFacade.new

    expect(member_facade).to be_a(MemberFacade)
  end

  it 'has members' do
    VCR.use_cassette('member_facade_has_members') do
      chamber = "house"
      state = "CO"
      member_facade = MemberFacade.new

      expect(member_facade.members(chamber, state).count).to eq(7)
      expect(member_facade.members(chamber, state)).to be_a(Array)
      expect(member_facade.members(chamber, state).first).to be_a(ChamberMember)
      expect(member_facade.members(chamber, state).last).to be_a(ChamberMember)
    end
  end

  it 'has a member' do
    VCR.use_cassette('member_facade_has_a_member') do
      member_id = 'D000197'

      member_facade = MemberFacade.new

      expect(member_facade.member(member_id)).to be_a(IndividualMember)
      expect(member_facade.member(member_id).id).to eq('D000197')
      expect(member_facade.member(member_id).first_name).to eq('Diana')
      expect(member_facade.member(member_id).last_name).to eq('DeGette')
      expect(member_facade.member(member_id).party).to eq('D')
      expect(member_facade.member(member_id).facebook).to eq('DianaDeGette')
      expect(member_facade.member(member_id).twitter).to eq('RepDianaDeGette')
    end
  end
end
