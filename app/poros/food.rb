class Food
  attr_reader :description

  def initialize(attributes)
    @description = attributes[:description]
  end
end