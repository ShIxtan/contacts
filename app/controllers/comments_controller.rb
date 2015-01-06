class CommentsController < ApplicationController
  def destroy
    Comment.destroy(params[:id])
    render json: {}
  end

  def index
    render json: find_commentable.comments
  end

  def create
    comment = Comment.new(comment_params)
    parent = find_commentable
    comment.commentable_id = parent.id
    comment.commentable_type = parent.class.to_s
    if comment.save
      render json: comment
    else
      render(
      json: contact.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def find_commentable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end


  private
  def comment_params
    params[:comment].permit(:content)
  end
end
