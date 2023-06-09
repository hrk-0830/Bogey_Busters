class Admin::RelationshipsController < ApplicationController

  def create
    following = current_customer.relationships.build(follower_id: params[:customer_id])
    following.save
    redirect_to request.referrer || root_path
  end

  def destroy
    following = current_customer.relationships.find_by(follower_id: params[:customer_id])
    following.destroy
    redirect_to request.referrer || root_path
  end

end
