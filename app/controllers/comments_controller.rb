class CommentsController < ApplicationController
   def create
    @query = Query.find(params[:query_id])
    @comment = @query.comments.create(comment_params)
     @comment.user_id = current_user.id
    redirect_to query_path(@query)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end

