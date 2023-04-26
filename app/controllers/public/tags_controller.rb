class Public::TagsController < ApplicationController
  before_action :authenticate_customer!



  def show
    @tag = Tag.find(params[:id])
    @tag_posts = @tag.posts.page(params[:page]).per(9)
  end

end
