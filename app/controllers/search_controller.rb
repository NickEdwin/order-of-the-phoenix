class SearchController < ApplicationController

  def index
    house = params[:house]
    @house = Potter.house_members(house).first
    @characters = Potter.characters
  end
end
