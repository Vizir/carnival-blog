class AddStatusToPost < ActiveRecord::Migration
  def change
    add_column :posts, :status, :integer
  end
end
