class PotterService

  def house_members(house)
    if house == "Gryffindor"
      houses = conn.get("houses/5a05e2b252f721a3cf2ea33f?key=#{ENV['POTTER_API_KEY']}")
      JSON.parse(houses.body, symbolize_names: true)
    elsif house == "Ravenclaw"
      houses = conn.get("houses/5a05da69d45bd0a11bd5e06f?key=#{ENV['POTTER_API_KEY']}")
      JSON.parse(houses.body, symbolize_names: true)
    elsif house == "Slytherin"
      houses = conn.get("houses/5a05dc8cd45bd0a11bd5e071?key=#{ENV['POTTER_API_KEY']}")
      JSON.parse(houses.body, symbolize_names: true)
    else house == "Hufflepuff"
      houses = conn.get("houses/5a05dc58d45bd0a11bd5e070?key=#{ENV['POTTER_API_KEY']}")
      JSON.parse(houses.body, symbolize_names: true)
    end
  end

  private

  def conn
    Faraday.new(url: "https://www.potterapi.com/v1/")
  end
end
