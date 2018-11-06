require 'rails_helper'

describe 'Members API' do
  it 'sends a list of members' do
    create_list(:member, 3)

    get '/api/v1/members'

    expect(response.status).to eq(200)
  end
end
