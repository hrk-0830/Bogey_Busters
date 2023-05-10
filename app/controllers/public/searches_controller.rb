class Public::SearchesController < ApplicationController
  before_action :authenticate_customer!

  def search
    @range = params[:range]

    if @range == "ユーザー名"
      @customers = Customer.looks(params[:search], params[:word]).page(params[:page]).order(created_at: :desc)
      @word = params[:word]
      @search = params[:search]
    else
      @posts = Post.looks(params[:search], params[:word]).page(params[:page]).order(created_at: :desc)
      @word = params[:word]
      @search = params[:search]
    end
    render :index
  end

  def index
    @range = params[:range]

    if @range == "ユーザー名"
      @customers = Customer.looks(params[:search], params[:word]).order(created_at: :desc)
    else
      @posts = Post.looks(params[:search], params[:word]).order(created_at: :desc)
    end
  end


end
