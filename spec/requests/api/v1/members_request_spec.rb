require 'rails_helper'

describe 'Members API' do
  it 'sends a list of members' do
    get '/api/v1/members'

    expect(response.status).to eq(200)

    members = JSON.parse(response.body)
  end
end
