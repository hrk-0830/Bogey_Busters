class Admin::PostCommentsController < ApplicationController
  
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
