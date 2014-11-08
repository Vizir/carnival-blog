class PostPresenter < Carnival::BaseAdminPresenter
  field :id,
        actions: [:index, :show, :csv],
        advanced_search: {oeprator: :equal}
  field :title,
        actions: [:index, :show, :edit, :new, :csv],
        advanced_search: {operator: :like}
  field :body,
        actions: [:index, :show, :edit, :new, :csv],
        advanced_search: {operator: :like}
  field :category,
        actions: [:new, :edit]
  field 'category.name',
        actions: [:index, :show, :csv],
        advanced_search: {operator: :like}
  field :status,
        actions: [:index, :show, :edit, :new, :csv],
        as: :carnival_enum
  field :tags,
        actions: [:new, :edit],
        nested_form: true,
        nested_form_modes: [:new],
        nested_form_allow_destroy: true

  action :new
  action :show
  action :edit
  action :destroy
  action :publish,
          method: 'GET',
          show_func: :draft?,
          show_overlay: true
  action :archive,
          method: 'GET',
          show_func: :published?,
          show_overlay: true


  scope :all
  scope :draft
  scope :published
  scope :archived

  index_as :custom
  
end
