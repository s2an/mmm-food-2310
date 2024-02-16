class FoodService
  def foods
    response = conn.get("/fdc/v1/foods/list")
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://api.nal.usda.gov/") do |faraday|
      faraday.headers[X-Api-Key] = Rails.application.credentials.X-Api-Key[:key]
    end
  end
end