class ProPublicaMemberService
  def state_members_data(chamber, state)
    get_json("/congress/v1/members/#{chamber}/#{state}/current.json")[:results]
  end

  def member_data(member_id)
    get_json("/congress/v1/members/#{member_id}.json")[:results]
  end

  private

  def conn
    Faraday.new(url: 'https://api.propublica.org') do |faraday|
      faraday.headers["X-API-KEY"] = ENV["propublica_api_key"]
      faraday.adapter Faraday.default_adapter
    end
  end

  def get_json(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end
end
