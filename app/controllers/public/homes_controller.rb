class Public::HomesController < ApplicationController
  def top
    @posts = Post.all.order(created_at: :desc)
  end

  def guest_sign_in
    customer = Customer.find_or_create_by!(email: 'guest@example.com') do |customer|
      customer.name = 'ゲスト'
      customer.password = SecureRandom.urlsafe_base64
    end
    sign_in customer
    flash[:announce] = "ゲストユーザーとしてログインしました"
    redirect_to root_path
  end
end
