class Event < ApplicationRecord
  has_many :regs, dependent: :destroy
  has_many :users, :through=> :regs
end
