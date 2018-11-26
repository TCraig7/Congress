class ChamberMember
  attr_reader     :id,
                  :name,
                  :role,
                  :party,
                  :twitter,
                  :facebook,
                  :seniority,
                  :next_election

  def initialize(member_data)
    @id = member_data[:id]
    @name = member_data[:name]
    @role = member_data[:role]
    @party = member_data[:party]
    @twitter = member_data[:twitter_id]
    @facebook = member_data[:facebook_account]
    @seniority = member_data[:seniority]
    @next_election = member_data[:next_election]
  end
end
