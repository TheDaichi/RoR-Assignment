class Articles::CommentsController < CommentsController
  before_action :find_article
  private
  def find_article
    @commentable = Article.find(params[:article_id])
  end
end