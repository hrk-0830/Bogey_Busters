class Public::PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to public_post_path(@post.id)
      flash[:notice] = "投稿に成功しました"
    else
      flash[:danger] = "必要情報を入力してください"
      redirect_to new_public_post_path
    end
  end

  def index
    @posts = Post.all.page(params[:page]).per(9)
  end

  def show
    @post_comment = PostComment.new
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to public_posts_path
    else
      flash[:danger] = "必要情報を入力してください"
      redirect_to public_posts_path
    end
  end


private

  def post_params
    params.require(:post).permit(:golf_course, :title, :prefecture_status, :difficulty_status, :review, :star, :customer_id, :image)
  end

end
