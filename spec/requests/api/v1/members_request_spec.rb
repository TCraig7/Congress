require 'rails_helper'

describe 'Members API' do
  it 'sends a list of members' do
    create_list(:member, 3)

    get '/api/v1/members'

    expect(response.status).to eq(200)

    members = JSON.parse(response.body)

    expect(members.count).to eq(3)
    expect(members.first).to have_key('name')
    expect(members.first).to have_key('role')
    expect(members.first).to have_key('party')
    expect(members.first).to have_key('next_election')
  end
end
