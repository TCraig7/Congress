require 'rails_helper'

describe ProPublicaMemberService do
  it 'exists' do
    propublica = ProPublicaMemberService.new

    expect(propublica).to be_a(ProPublicaMemberService)
  end

  it 'returns #member_data' do
    VCR.use_cassette('member_data') do
      propublica = ProPublicaMemberService.new
      chamber = 'house'
      state = 'CO'

      response = propublica.member_data(chamber, state)

      expect(response).to be_a(Array)
      expect(response.first).to have_key(:name)
      expect(response.first).to have_key(:role)
      expect(response.first).to have_key(:party)
      expect(response.first).to have_key(:next_election)
    end
  end
end
