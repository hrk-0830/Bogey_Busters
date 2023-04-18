class Admin::CustomersController < ApplicationController
  before_action :authenticate_admin!

  def show
    @customer = Customer.find(params[:id])
    @post = @customer.posts.page(params[:page])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def index
     @customers = Customer.all.page(params[:page])
  end

  def unsubscribe
  end
  # 退会処理（ステータス更新）
  def withdraw
    @customer = current_customer
    if @customer.nil?
      redirect_to root_path, announce: 'このユーザーは退会済みです。'
    else
      @customer.update(is_deleted: true)
      reset_session
      redirect_to root_path, announce: '退会手続きが完了しました。'
    end
  end


  private

  def customer_params
    params.require(:customer).permit(:name, :introduction, :profile_image, :best_score, :residence_status, :technique_status, :golf_history, :email)
  end
end
