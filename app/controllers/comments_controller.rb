class CommentsController < ApplicationController
  def create
    comment = Comment.new(comment_params)
    comment.post_id = params[:post_id]
    comment.user_id = current_user.id
    comment.save
    
    redirect_to :back
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to :back
  end
  
  # url을 통해 post_id 넘어가므로 화이트리스트에 작성 안해줘도 됨
  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
