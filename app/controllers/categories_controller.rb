class CategoriesController < Carnival::BaseAdminController

  private

  def permitted_params
    params.permit(category: [:name])
  end
end
