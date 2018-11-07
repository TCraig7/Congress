require 'rails_helper'

describe 'Members API' do
  it 'sends a list of members' do
    VCR.use_cassette('members_controller') do
      get '/api/v1/members?chamber=house&state=CO'

      expect(response.status).to eq(200)

      members = JSON.parse(response.body)

      expect(members).to be_a(Array)
      expect(members.first).to be_a(Hash)
      expect(members.first).to have_key("name")
      expect(members.first).to have_key("role")
      expect(members.first).to have_key("party")
      expect(members.first).to have_key("twitter")
      expect(members.first).to have_key("facebook")
      expect(members.first).to have_key("seniority")
      expect(members.first).to have_key("next_election")
    end
  end
end
