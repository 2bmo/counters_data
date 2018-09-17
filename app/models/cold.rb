class Cold < ApplicationRecord
  belongs_to :customer

  validates :cold_water_data, presence: true, length: { minimum: 5, maximum: 8 }
end
