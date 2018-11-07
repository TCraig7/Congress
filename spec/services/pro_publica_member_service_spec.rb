require 'rails_helper'

describe ProPublicaMemberService do
  it 'exists' do
    propublica = ProPublicaMemberService.new

    expect(propublica).to be_a(ProPublicaMemberService)
  end
end
