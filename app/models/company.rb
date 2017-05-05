class Company < ApplicationRecord
  has_many :jobs
  validates :name, :location, length: {maximum: 50}
end
