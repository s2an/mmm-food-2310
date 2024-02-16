require "rails_helper"

RSpec.describe Food do
  it "exists" do
    attrs = {
      description: "sweet, sweet" 
    }

    food = Food.new(attrs)

    expect(food).to be_a Food
    expect(food.description).to eq("sweet, sweet")
  end
end