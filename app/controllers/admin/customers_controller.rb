class Admin::CustomersController < ApplicationController
  def show
    @customer = Customer.find(params[:id])
    @post = @customer.posts
  end

  def edit
    @customer = current_customer
  end

  def index
     @customer = Customer.all
  end
  
  def unsubscribe
  end
  # 退会処理（ステータス更新）
  def withdraw
    @customer = current_customer
    @customer.update(is_deleted: true)
    reset_session
    redirect_to admin_customers_path
  end


  private

  def customer_params
    params.require(:customer).permit(:name, :introduction, :profile_image, :best_score, :residence_status, :technique_status, :golf_history, :email)
  end
end
