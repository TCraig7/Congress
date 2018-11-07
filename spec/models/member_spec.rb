require 'rails_helper'

describe Member, type: :model do
  before(:each) do
    chamber = 'house'
    state = 'CO'
    @member = Member.new(chamber, state)
  end

  it 'exists' do
    expect(@member).to be_a(Member)
  end
end
