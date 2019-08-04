class User < ApplicationRecord
  scope :order_by_name, -> { order("user_name") }
  validates :user_name, :user_email, :phone_number, presence: { message: "must be given please" }
  validates :user_name, :user_email, :phone_number, uniqueness: { message: "has been taken already" }
  validates :user_email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  require "csv"
  def self.to_csv
    attributes = %w[id user_name user_email phone_number]
    CSV.generate(headers: true) do |csv|
      csv << attributes
      all.each do |user|
        csv << attributes.map { |attr| user.send(attr) }
      end
    end
  end
end
