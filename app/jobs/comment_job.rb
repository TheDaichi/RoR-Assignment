# Action cable Implementation
# class CommentJob < ApplicationJob
#   queue_as :default

#   def perform(comment)
#     ActionCable.server.broadcast 'comments',
#       # content: comment.body,
#       parent_id: comment.parent_id.nil? ? true : false,
#       parent_comment_id: comment.parent_id,
#       # id: comment.id,
#       comment: render_comment(comment)
#   end
#   private
#   def render_comment(comment)
#     ApplicationController.render(partial: 'comments/comment', locals: { comment: comment } )
#   end
# end