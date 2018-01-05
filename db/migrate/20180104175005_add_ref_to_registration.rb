class AddRefToRegistration < ActiveRecord::Migration[5.1]
  def change
    add_reference :registrations, :users, index: true
    add_foreign_key :registrations, :users
    add_reference :registrations, :events, index: true
    add_foreign_key :registrations, :events
  end
end
