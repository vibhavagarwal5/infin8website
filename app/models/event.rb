class Event < ApplicationRecord
  has_many :regs
  has_many :users, :through=> :regs
end
