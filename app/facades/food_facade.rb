class FoodFacade
  def initialize(query)
    @query = query
  end

  def foods
    data = FoodService.new.foods[:data]
    data.map do |food_data|
      Food.new(food_data[:attributes])
    end
  end

  def total_count

  end
end