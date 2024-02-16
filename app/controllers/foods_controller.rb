class FoodsController < ApplicationController
  def index
    @facade = SearchFacade.new(params[:name])
  end
end
