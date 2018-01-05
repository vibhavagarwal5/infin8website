class UpdateRegistrations < ActiveRecord::Migration[5.1]
  def change
    add_column :registrations, :team_name , :string
  end
end
