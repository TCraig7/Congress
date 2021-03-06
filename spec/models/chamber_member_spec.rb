require 'rails_helper'

describe ChamberMember, type: :model do
  before(:each) do
    member_data = {id: 'D000197',
                   name: 'Bob Ross',
                   role: 'Senator',
                   party: 'D',
                   twitter_id: 'painterbob',
                   facebook_account: 'SenBobRoss',
                   seniority: '1',
                   next_election: '2020'}

    @member = ChamberMember.new(member_data)
  end

  it 'exists' do
    expect(@member).to be_a(ChamberMember)
  end

  it 'has attributes' do
    expect(@member.id).to eq('D000197')
    expect(@member.name).to eq('Bob Ross')
    expect(@member.role).to eq('Senator')
    expect(@member.party).to eq('D')
    expect(@member.twitter).to eq('painterbob')
    expect(@member.facebook).to eq('SenBobRoss')
    expect(@member.seniority).to eq('1')
    expect(@member.next_election).to eq('2020')
  end
end
