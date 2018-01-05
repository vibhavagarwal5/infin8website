class User < ApplicationRecord
  has_many :registrations, dependent: :destroy
end
