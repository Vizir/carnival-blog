class Category < ActiveRecord::Base
  include Carnival::ModelHelper
  
  has_many :posts
end
