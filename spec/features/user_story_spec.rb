require "rails_helper"

RSpec.describe "Mid-Mod" do
  describe "User Story" do
  # As a user,
  # When I visit "/"
  # And I fill in the search form with "sweet potatoes" (Note: Use the existing search form)
  # And I click "Search"
  # Then I should be on page "/foods"
  # And I should see a total number of items returned by the search. (Note: "sweet potatoes" should yield >30,000 results)
  # Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"
  # And for each of the foods I should see:
  # - The food's GTIN/UPC code
  # - The food's description
  # - The food's Brand Owner
  # - The food's ingredients

    it "finds the sweet, sweet potatoes" do
      visit "/"

      expect(current_path).to eq("/")
      expect(page).to have_field("q")
      expect(page).to have_button("Search")

      fill_in("q", with: "sweet potatoes")
      click_button("Search")
    end
  end
end
