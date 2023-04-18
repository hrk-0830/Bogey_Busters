class Public::PostCommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    if @customer.email != 'guest@example.com'
      @post_comment = current_customer.post_comments.build(post_comment_params)
      @post_comment.post_id = @post.id
      @post_comment.save
      redirect_to request.referrer || root_path
    else
      flash[:danger] = "ゲストユーザーはコメントできません"
      redirect_to request.referrer || root_path
    end
  end


  def destroy
    @post = Post.find(params[:post_id])
    PostComment.find(params[:id]).destroy
    redirect_to request.referrer || root_path
  end



  private

  def post_comment_params
    params.require(:post_comment).permit(:comment, :customer_id, :post_id)
  end
end
