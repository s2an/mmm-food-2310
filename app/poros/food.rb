class Food
  attr_reader :name

  def initialize(attributes)
    @description = attributes[:description]
  end
end