class IndividualMember
  attr_reader       :id,
                    :first_name,
                    :last_name,
                    :twitter,
                    :facebook,
                    :party

  def initialize(member_data)
    @id = member_data[:member_id]
    @first_name = member_data[:first_name]
    @last_name = member_data[:last_name]
    @twitter = member_data[:twitter_account]
    @facebook = member_data[:facebook_account]
    @party = member_data[:current_party]
  end
end
