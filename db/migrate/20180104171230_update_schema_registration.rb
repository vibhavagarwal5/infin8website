class UpdateSchemaRegistration < ActiveRecord::Migration[5.1]
  def change
    def change
      add_column :registrations, :team_name , :string
      add_column :events,  :main_spoc, :string
    end
  end
end
