class Public::CustomersController < ApplicationController
  def show
    @customer = Customer.find(params[:id])
    @post = @customer.posts
  end

  def edit
    @customer = current_customer
     unless @customer == current_customer
      redirect_to  customer_path
     end
  end

  def update
    @customer = current_customer
    if @customer.update(customer_params)
      redirect_to public_customer_path(@customer.id)
    else
      render :edit
    end
  end
  
  def followings
    @customer = Customer.find(params[:id])
    @customers = @customer.followings
  end

  def followers
    @customer = Customer.find(params[:id])
    @customers = @customer.followers
  end

  def index
  end

  def unsubscribe
  end
  # 退会処理（ステータス更新）
  def withdraw
    @customer = current_customer
    @customer.update(is_deleted: true)
    reset_session
    redirect_to root_path
  end


  private

  def customer_params
    params.require(:customer).permit(:name, :introduction, :profile_image, :best_score, :residence_status, :technique_status, :golf_history, :email)
  end

end
