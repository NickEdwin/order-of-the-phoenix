class Potter

  attr_reader :house_name,
              :members

  def initialize(potter_info)
    @house_name = potter_info[:name]
    @members = potter_info[:members]
  end

  def self.house_members(house)
    potter_service = PotterService.new
    potter_info = potter_service.house_members(house)
    @houses = potter_info.map do |house|
      Potter.new(house)
    end
  end

  def self.characters
    potter_service = PotterService.new
    character_info = potter_service.characters
  end
end
