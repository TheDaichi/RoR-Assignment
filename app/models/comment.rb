class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  belongs_to :parent, optional: true, class_name: "Comment"

  # Action Cable Implementation
  # after_create_commit { CommentJob.perform_later self }

  def comments
    Comment.where(commentable: commentable, parent_id: id)
  end
end
