class UpdateColumnContact < ActiveRecord::Migration[5.1]
  def change
    remove_column :users,:contact
    add_column :users, :contact,:string
  end
end
