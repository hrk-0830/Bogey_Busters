class Public::SearchesController < ApplicationController
  before_action :authenticate_customer!

  def search
    @range = params[:range]

    if @range == "ユーザー名"
      @customers = Customer.looks(params[:search], params[:word])
      @word = params[:word]
      @search = params[:search]
    else
      @posts = Post.looks(params[:search], params[:word])
      @word = params[:word]
      @search = params[:search]
    end
    redirect_to admin_searches_path
  end

  def index
    @range = params[:range]

    if @range == "ユーザー名"
      @customers = Customer.looks(params[:search], params[:word])
      @search = params[:search]
      @word = params[:word]
    else
      @posts = Post.looks(params[:search], params[:word])
      @search = params[:search]
      @word = params[:word]
    end
  end
end
