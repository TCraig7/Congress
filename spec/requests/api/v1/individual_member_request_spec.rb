require 'rails_helper'

describe 'Member API' do
  it 'sends information for one member' do
    VCR.use_cassette('member_controller') do
      get '/api/v1/members/D000197'

      expect(response.status).to eq(200)

      member = JSON.parse(response.body, symbolize_names: true)

      expect(member).to be_a(Hash)
      expect(member[:first_name]).to eq('Diana')
      expect(member[:last_name]).to eq('DeGette')
      expect(member[:id]).to eq('D000197')
      expect(member[:party]).to eq('D')
    end
  end
end
