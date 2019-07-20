class Dog < ApplicationRecord
    validates :name, :email, presence: { message: "must be given please" }
    validates :name, :email, uniqueness: { message: "has been taken already" }
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end
