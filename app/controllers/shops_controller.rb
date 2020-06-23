class ShopsController < ApplicationController
  before_action :authenticate_user!, only:[:edit]
 
  # before_action :set_user, only:[:index]

  def index
  end

  def new
    @shop = Shop.new
    # @shop.shop_images.new
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      @shop.update(owner_id: current_user.id)
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end
  # private

  # def set_user
  #   user = User.find(params[:id])
  # end

  private 

  def shop_params
    params.require(:shop).permit(
      :shop_name, 
      :condition, 
      :introduction,
      :shop_tel, 
      :shop_add, 
      :weekday_open, 
      :weekday_close, 
      :weekend_open, 
      :weekend_close,
      :dayoff,
      :owner_id,
      :town_id,
      :corona_twoWays,
      :corona_twoMeters,
      :corona_partition,
      :corona_disinfect,
      :corona_mask,
      :corona_temperature,
      :corona_distance,
      :corona_customerDisinfect,
      :corona_customerDistance,
      :corona_exit)
  end

end
