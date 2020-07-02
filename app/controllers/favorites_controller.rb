class FavoritesController < ApplicationController

  def index
    @favorites = current_user.favorite_shops.includes(:user)
  end

  def create
    favorite = current_user.favorites.build(shop_id: params[:shop_id])
    if favorite.save!
      redirect_to root_path
    else  
      render :edit
    end
  end

  def destroy
    current_user.favorites.find_by(shop_id: params[:shop_id]).destroy!
    redirect_to root_path
  end

end


# def create
#   bookmark = current_user.bookmarks.build(board_id: params[:board_id])
#   bookmark.save!
#   redirect_to boards_path, success: t('.flash.bookmark')
# end

# def destroy
#   current_user.bookmarks.find_by(board_id: params[:board_id]).destroy!
#   redirect_to boards_path, success: t('.flash.not_bookmark')
# end