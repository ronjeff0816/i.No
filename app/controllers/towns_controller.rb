class TownsController < ApplicationController
  def index
    @town = Town.all
    @shop = Shop.all
  end
end
