class Employee < ApplicationRecord
  scope :ord, -> { order("name") }
end
