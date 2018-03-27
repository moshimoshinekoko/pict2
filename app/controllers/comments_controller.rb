class CommentsController < ApplicationController
  def index
    @comment_topics = current_user.comment_topics
    @comments = topic.comment.includes(:user).all

  end

  def new
    @comment = Comment.new
    @comment.topic_id = "topicid"
  end

  def create
    @comment = Comment.new(body: params[:comment][:body], topic_id: params[:comment][:topicid], user_id: params[:user_id])
    @comment.user = current_user
    @comment.topic_id = params[:comment][:topicid]


   if @comment.save

     redirect_to topics_path, notice: 'Comment Done'
   else
     redirect_to topics_path, notice: 'Comment Nope'
   end
 end


end
