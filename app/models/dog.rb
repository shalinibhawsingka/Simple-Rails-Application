class Dog < ApplicationRecord
  scope :search_by_name_or_email, ->(search_term) { where("name LIKE ? OR email LIKE ?", "%#{search_term}%", "%#{search_term}%") }
  validates :name, :email, presence: { message: "must be given please" }
  validates :name, :email, uniqueness: { message: "has been taken already" }
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end
