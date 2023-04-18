class Public::CustomersController < ApplicationController
  before_action :authenticate_customer!


  def show
    @customer = Customer.find(params[:id])
    @post = @customer.posts.page(params[:page]).per(6)
  end

  def edit
    @customer = current_customer
  end

  def update
    @customer = current_customer
    if @customer.email != 'guest@example.com'
      if @customer.update(customer_params)
        flash[:announce] = "編集に成功しました"
        redirect_to public_customer_path(@customer.id)
      else
        render :edit
      end
    else
      flash[:danger] = "ゲストユーザーは編集できません"
      redirect_to root_path
    end
  end

  def followings
    @customer = Customer.find(params[:id])
    @customers = @customer.followings.page(params[:page])
  end

  def followers
    @customer = Customer.find(params[:id])
    @customers = @customer.followers.page(params[:page])
  end

  def index
  end

  def unsubscribe
  end
  # 退会処理（ステータス更新）
  def withdraw
    @customer = current_customer
    if @customer.email != 'guest@example.com'
      @customer.update(is_deleted: true)
      reset_session
      redirect_to root_path
    else
      flash[:danger] = "ゲストユーザーは削除できません"
      redirect_to root_path
    end
  end


  private

  def customer_params
    params.require(:customer).permit(:name, :introduction, :profile_image, :best_score, :residence_status, :technique_status, :golf_history, :email)
  end

end
