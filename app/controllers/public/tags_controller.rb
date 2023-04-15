class Public::TagsController <
  def show
    @tag = Tag.find(params[:id])
  end
end
