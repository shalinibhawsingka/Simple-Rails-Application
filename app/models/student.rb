class Student < ApplicationRecord
  scope :order_by_name, -> { order("name") }
  validates :name, :email, :phone_number, presence: { message: "must be given please" }
  validates :name, :email, :phone_number, uniqueness: { message: "has been taken already" }
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end
