class Student < ApplicationRecord
  scope :ord, -> { order("name") }
end
