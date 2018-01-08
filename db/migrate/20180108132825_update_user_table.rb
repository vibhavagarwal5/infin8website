class UpdateUserTable < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users,  :contact, :integer
    add_column :users,  :college, :text
    add_column :users,  :admin, :boolean, default: false
  end
end
