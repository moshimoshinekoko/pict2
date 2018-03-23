class CommentsController < ApplicationController
  def index
    @comment = Comment.new
    @comment_topics = current_user.comment_topics
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(body: params[:body], topic_id: params[:topic_id], user_id: params[:user_id])
    @comment.user_id = current_user.id
    @comment.topic_id = params[:topic_id]

   if @comment.save
     redirect_to topics_path, notice: 'Comment Done'
   else
     redirect_to topics_path, notice: 'Comment Nope'
   end
 end


end
