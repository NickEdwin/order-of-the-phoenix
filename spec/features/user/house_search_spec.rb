require "rails_helper"

RSpec.describe 'As a user' do
  it "selects a house from the dropdown and goes to that houses show page" do

    visit '/'

    select "Gryffindor", from: :house

    click_on "Search For Members"

    expect(current_path).to eq(search_path)

  end
end
