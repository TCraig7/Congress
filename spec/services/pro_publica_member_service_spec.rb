require 'rails_helper'

describe ProPublicaMemberService do
  it 'exists' do
    propublica = ProPublicaMemberService.new

    expect(propublica).to be_a(ProPublicaMemberService)
  end

  it 'returns #state_members_data' do
    VCR.use_cassette('state_members_data') do
      propublica = ProPublicaMemberService.new
      chamber = 'house'
      state = 'CO'

      response = propublica.state_members_data(chamber, state)

      expect(response).to be_a(Array)
      expect(response[0]).to have_key(:name)
      expect(response[0]).to have_key(:role)
      expect(response[0]).to have_key(:party)
      expect(response[0]).to have_key(:next_election)
    end
  end

  it 'returns #member_data' do
    VCR.use_cassette('member_data') do
      propublica = ProPublicaMemberService.new
      member_id = 'D000197'

      response = propublica.member_data(member_id)

      expect(response).to be_a(Array)
      expect(response[0]).to have_key(:first_name)
      expect(response[0]).to have_key(:member_id)
      expect(response[0]).to have_key(:current_party)
      expect(response[0]).to have_key(:roles)
      expect(response[0][:roles][0]).to have_key(:committees)
    end
  end
end
