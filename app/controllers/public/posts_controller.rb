class Public::PostsController < ApplicationController
  before_action :authenticate_customer!

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.customer_id = current_customer.id
    if @post.save!
      # タグの保存
      @post.save_tags(params[:post][:tag])
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
      # タグの更新
      @post.save_tags(params[:post][:tag])
      # 成功したら投稿記事へリダイレクト
      redirect_to public_post_path(@post)
    else
      flash[:danger] = "必要情報を入力してください"
      redirect_to edit_public_post_path(@post)
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to public_posts_path
  end


  private

  def post_params
    params.require(:post).permit(:golf_course, :title, :prefecture_status, :difficulty_status, :review, :star, :customer_id, :image)
  end

end
