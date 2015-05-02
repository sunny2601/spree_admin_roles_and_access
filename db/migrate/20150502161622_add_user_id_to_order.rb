class AddUserIdtoOrder < ActiveRecord::Migration
  def change
  	add_column :spree_orders, :user_id, :integer
  end
end
