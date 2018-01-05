class ChangeColumnname < ActiveRecord::Migration[5.1]
  def change
    rename_column :registrations, :users_id, :user_id
    rename_column :registrations, :events_id, :event_id
  end
end
