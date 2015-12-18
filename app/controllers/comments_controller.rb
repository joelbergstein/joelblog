class CommentsController < ApplicationController
	def create
		@blog = Blog.find(params[:blog_id])
	    @comment = @blog.comments.create!(comment_params)
	    redirect_to @blog
	end

	def destroy
    	@blog = Blog.find(params[:blog_id])
    	@comment = @blog.comments.find(params[:id])
    	@comment.destroy
    	redirect_to @blog
  end

	private
    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:author, :content, :blog_id)
    end
end
