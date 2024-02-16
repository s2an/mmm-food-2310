class Food
  attr_reader :gtinUpc, :description, :brandOwner

  def initialize(attributes)
    @gtinUpc = attributes[:gtinUpc]
    @description = attributes[:description]
    @brandOwner = attributes[:brandOwner]
  end
end