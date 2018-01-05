class CreateRegistrations < ActiveRecord::Migration[5.1]
  def change
    create_table :registrations do |t|
      t.references :users, foreign_key: true
      t.references :events, foreign_key: true
      t.string :team_name

      t.timestamps
    end
  end
end
