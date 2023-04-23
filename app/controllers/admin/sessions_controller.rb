class Admin::SessionsController < Devise::SessionsController

  def create
    super do |resource|
      flash[:announce] = "ログインしました。"
      redirect_to root_path and return
    end
  end


end
