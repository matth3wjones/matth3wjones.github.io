class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    puts params
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(comment_params)
    redirect_to post_path(@post)
  end

  private
    def comment_params
      params.require(:comment).permit(:name, :text)
    end
end
