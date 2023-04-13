class Public::PostCommentsController < ApplicationController
  
  def create
    @post = Post.find(params[:post_id])
    @comment = current_user.post_comment.new(post_comment_params)
    @comment.post_id = @post.id
    @comment.save
    render :comments
  end

  def destroy
    @book = Book.find(params[:book_id])
    BookComment.find(params[:id]).destroy
    render :comments
  end



  private

  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end
end
