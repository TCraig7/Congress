require 'rails_helper'

describe IndividualMember, type: :model do
  before(:each) do
    member_data = {member_id: 'D000197',
                   first_name: 'Bob',
                   last_name: 'Ross',
                   twitter_account: 'painterbob',
                   facebook_account: 'SenBobRoss',
                   current_party: 'D'}

    @member = IndividualMember.new(member_data)
  end

  it 'exists' do
    expect(@member).to be_a(IndividualMember)
  end

  it 'has attributes' do
    expect(@member.id).to eq('D000197')
    expect(@member.first_name).to eq('Bob')
    expect(@member.last_name).to eq('Ross')
    expect(@member.party).to eq('D')
    expect(@member.twitter).to eq('painterbob')
    expect(@member.facebook).to eq('SenBobRoss')
  end
end
