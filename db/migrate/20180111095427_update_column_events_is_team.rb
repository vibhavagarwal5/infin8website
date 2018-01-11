class UpdateColumnEventsIsTeam < ActiveRecord::Migration[5.1]
  def change
    remove_column :events,:is_team
    add_column :events,:is_team, :boolean, default: true

  end
end
