class FoodFacade
  def initialize(q)
    @q = q
  end

  def foods_query
    data = FoodService.new.foods(@q)[:foods]
    data.map do |food_data|
      Food.new(food_data[:attributes])
    end
  end

  def total_hits
    @foods["totalHits"]
  end

end