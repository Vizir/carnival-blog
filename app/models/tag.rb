class Tag < ActiveRecord::Base
  include Carnival::ModelHelper
  
  has_many :post_tags
  has_many :posts, through: :post_tags
end
