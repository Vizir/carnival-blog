class PostsController < Carnival::BaseAdminController

  def edit
    @post = Post.find(params[:id])
  end

  def publish
    post = Post.find(params[:id])
    post.published!
    flash[:notice] = 'Post publicado com sucesso'
    redirect_to posts_path
  end

  def archive
    post = Post.find(params[:id])
    post.archived!
    flash[:notice] = 'Post arquivado com sucesso'
    redirect_to posts_path
  end

  private

  def permitted_params
    params.permit(post: [:title, :body, :category_id, :status, tags_attributes: [:id, :name]])
  end
end
