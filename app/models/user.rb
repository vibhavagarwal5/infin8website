class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :regs
  has_many :events, :through=> :regs
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
