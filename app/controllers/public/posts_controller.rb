class Public::PostsController < ApplicationController
  before_action :authenticate_customer!
  before_action :ensure_correct_customer, only: [:edit, :update]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.customer_id = current_customer.id
    if current_customer.email != 'guest@example.com'
      if @post.save
        # タグの保存
        @post.save_tags(params[:post][:tag])
        redirect_to public_post_path(@post.id)
        flash[:announce] = "投稿に成功しました"
      else
        flash[:danger] = "必要情報を入力してください"
        render :new
      end
    else
      flash[:danger] = "ゲストユーザーは投稿できません"
      redirect_to root_path
    end
  end

  def index
    @posts = Post.all.page(params[:page])
    @prefecture_options = Post.prefecture_statuses.keys.map { |key| [Post.prefecture_statuses_i18n[key], key] }
    @prefecture = params[:prefecture_status]
  end

  def show
    @post_comment = PostComment.new
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def search_prefecture
    @prefecture_options = Post.prefecture_statuses.keys.map { |key| [Post.prefecture_statuses_i18n[key], key] }
    @prefecture = params[:prefecture_status]
    @posts = Post.where(prefecture_status: @prefecture).page(params[:page]).per(9)
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      # タグの更新
      @post.save_tags(params[:post][:tag])
      # 成功したら投稿記事へリダイレクト
      redirect_to public_post_path(@post)
      flash[:announce] = "編集に成功しました"
    else
      flash[:danger] = "必要情報を入力してください"
      redirect_to edit_public_post_path(@post)
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to public_posts_path
    flash[:announce] = "削除に成功しました"
  end


  private

  def post_params
    params.require(:post).permit(:golf_course, :title, :prefecture_status, :difficulty_status, :review, :star, :customer_id, :image)
  end

  def ensure_correct_customer
    @post = Post.find(params[:id])
    @customer = @post.customer
    unless @customer == current_customer
      flash[:danger] = "他のユーザーの情報は編集できません。"
      redirect_to public_posts_path
    end
  end

end
