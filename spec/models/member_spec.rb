require 'rails_helper'

describe Member, type: :model do
  before(:each) do
    member_data = {name: "Bob Ross",
                   role: "Senator",
                   party: "D",
                   twitter_id: "painterbob",
                   facebook: "SenBobRoss",
                   seniority: "1",
                   next_election: "2020"}

    @member = Member.new(member_data)
  end

  it 'exists' do
    expect(@member).to be_a(Member)
  end

  it 'has attributes' do
    expect(@member.name).to eq("Bob Ross")
    expect(@member.role).to eq("Senator")
    expect(@member.party).to eq("D")
    expect(@member.twitter).to eq("painterbob")
    expect(@member.facebook).to eq("SenBobRoss")
    expect(@member.seniority).to eq("1")
    expect(@member.next_election).to eq("2020")
  end
end
