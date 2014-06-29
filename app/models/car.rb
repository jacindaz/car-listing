class Car < ActiveRecord::Base
  validates :manufacturer_id, presence: true, uniqueness: { scope: :mileage}
  validates :color, presence: true
  validates :year, presence: true, inclusion: { within: 1920..2014 }
  validates :mileage, presence: true

  belongs_to :manufacturer
end
