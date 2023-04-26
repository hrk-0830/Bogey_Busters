class Public::FavoritesController < ApplicationController

  def create
    if current_customer.email != 'guest@example.com'
      @post = Post.find(params[:post_id])
      @favorite = current_customer.favorites.new(post_id: @post.id)
      @favorite.save
      redirect_to request.referrer || root_path
    else
      flash[:danger] = "ゲストユーザーはいいねできません"
      redirect_to request.referrer || root_path
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @favorite = current_customer.favorites.find_by(post_id: @post.id)
    @favorite.destroy
    redirect_to request.referrer || root_path
  end

end
