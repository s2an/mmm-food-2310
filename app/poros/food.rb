class Food
  attr_reader :description

  def initialize(attributes)
    @gtinUpc = attributes[:gtinUpc]
    @description = attributes[:description]
    @brandOwner = attributes[:brandOwner]
  end
end