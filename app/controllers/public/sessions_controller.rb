# frozen_string_literal: true

class Public::SessionsController < Devise::SessionsController

  def create
    reject_customer
    super do |resource|
      flash[:announce] = "ログインしました。"
      redirect_to root_path and return
    end
  end

  protected

  def reject_customer
    @customer = Customer.find_by(email: params[:customer][:email].downcase)
    if @customer
      if (@customer.valid_password?(params[:customer][:password]) && (@customer.active_for_authentication? == false))
        flash[:danger] = "退会済みです。"
        redirect_to new_customer_registration_path
      end
    else
      flash[:danger] = "必須項目を入力してください。"
    end
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
