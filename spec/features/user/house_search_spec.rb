require "rails_helper"

RSpec.describe 'As a user' do
  it "selects a house from the dropdown and goes to that houses show page" do

    visit '/'

    select "Gryffindor", from: :house

    click_on "Search For Members"

    expect(current_path).to eq(search_path)

    expect(page).to have_content("House Members: 40")
    expect(page).to have_content("Hermione Granger of House Gryffindor, Role: student, Patronus: otter")
    expect(page).to have_content("Ronald Weasley of House Gryffindor, Role: student, Patronus: jack russell terrier")
    expect(page).to have_content("Harry Potter of House Gryffindor, Role: student, Patronus: stag")

  end
end
