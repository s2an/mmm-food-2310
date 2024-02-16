class FoodService
  def foods
    response = conn.get("/fdc/v1/foods/search?=#{query}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://api.nal.usda.gov/") do |faraday|
      faraday.headers[X-Api-Key] = Rails.application.credentials.fdcentral[:key]
    end
  end
end