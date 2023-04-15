class Admin::PostsController < ApplicationController
  def index
  end

  def show
    @customer = Customer.find(params[:id])
    @post = @customer.posts
  end

  def edit
  end
end
