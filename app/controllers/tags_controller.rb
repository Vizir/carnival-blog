class TagsController < Carnival::BaseAdminController

  private

  def permitted_params
    params.permit(tag: [:name])
  end
end
