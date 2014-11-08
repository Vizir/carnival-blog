class Post < ActiveRecord::Base
  STATUS_ENUM = [ :draft, :published, :archived ]
  enum status: STATUS_ENUM

  belongs_to :category
  has_many :post_tags
  has_many :tags, through: :post_tags

  accepts_nested_attributes_for :tags, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true
end
