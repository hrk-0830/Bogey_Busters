class Admin::PostsController < ApplicationController
  before_action :authenticate_admin!
  def index
    @posts = Post.all.page(params[:page]).order(created_at: :desc)
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:announce] = "投稿の削除に成功しました"
    redirect_to admin_posts_path
  end


end
