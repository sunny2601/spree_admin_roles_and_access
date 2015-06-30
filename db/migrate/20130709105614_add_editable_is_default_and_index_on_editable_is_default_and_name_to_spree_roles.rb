class AddEditableIsDefaultAndIndexOnEditableIsDefaultAndNameToSpreeRoles < ActiveRecord::Migration
  def change
    add_column :spree_roles, :editable, :boolean, :default => true
    add_column :spree_roles, :is_default, :boolean, :default => false
    add_column :spree_roles, :discount_percentage, :float, :default => 0

    add_index(:spree_roles, :name)
    add_index(:spree_roles, :discount_percentage)
    add_index(:spree_roles, :is_default)
    add_index(:spree_roles, :editable)
  end
end
