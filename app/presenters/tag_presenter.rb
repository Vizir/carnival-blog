class TagPresenter < Carnival::BaseAdminPresenter
  field :id,
        actions: [:index, :show, :csv],
        advanced_search: {operator: :equal}
    field :name,
        actions: [:index, :new, :edit, :show, :csv],
        advanced_search: {operator: :like}

  action :index
  action :edit
  action :new
  action :destroy
  action :show

  index_as :grid
end
