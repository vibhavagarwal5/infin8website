class RemSpocfromEvents < ActiveRecord::Migration[5.1]
  def change
    remove_column :events, :main_spoc,:string
  end
end
