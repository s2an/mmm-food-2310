class FoodsController < ApplicationController
  def index
    @facade = FoodFacade.new(params[:name])
  end
end
