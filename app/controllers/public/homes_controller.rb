class Public::HomesController < ApplicationController
  def top
    @posts = Post.all
  end

  def guest_sign_in
    customer = Customer.find_or_create_by!(email: 'guest@example.com') do |customer|
      customer.name = 'ゲスト'
      customer.password = SecureRandom.urlsafe_base64
    end
    sign_in customer
    redirect_to root_path, announce: 'ゲストユーザーとしてログインしました。'
  end
end
