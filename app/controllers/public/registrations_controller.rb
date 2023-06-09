# frozen_string_literal: true

class Public::RegistrationsController < Devise::RegistrationsController

  def after_sign_up_path_for(_resource)
    root_path
  end

  def create
    super do |resource|
      unless resource.errors.empty?
        flash[:danger] = "必要な情報を入力してください。"
        redirect_to new_customer_registration_path and return
      end
    end
  end

end
