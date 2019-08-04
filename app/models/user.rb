class User < ApplicationRecord
  scope :ord, -> { order("user_name") }
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
