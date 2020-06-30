class ShopsController < ApplicationController
  before_action :authenticate_user!, only:[:edit]
  # before_action :set_shops, only:[:edit, :show]
 
  # before_action :set_user, only:[:index]

  def index
    if current_user.present?
      @user = User.find(current_user.id)
      @myShop = Shop.where(owner_id: current_user.id)
    end
    @shop = Shop.all
    random = Shop.all.shuffle
    @pickupShops = random.take(4)
  end

  def new
    @shop = Shop.new
    @shop.shop_images.new
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
    @shop = Shop.find(params[:id])
    @pics = @shop.shop_images
    @length = @pics.length
  end

  def update
    @shop = Shop.find(params[:id])
    if @shop.update(shop_params)
      redirect_to root_path 
    else
      render :edit
    end
  end

  def show
    @shop = Shop.find(params[:id])
    @shop_image = ShopImage.all
  end

  def destroy
    @shop = Shop.find(params[:id])
    if @shop.destroy
      redirect_to root_path
    else
      render :show
    end
  end
  # private

  # def set_user
  #   user = User.find(params[:id])
  # end

  private 

  def set_shops
    @shop = Shop.find(params[:id])
  end

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
      :corona_exit,
      shop_images_attributes:  [:image, :_destroy, :id])
  end

end
