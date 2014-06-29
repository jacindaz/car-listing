class Car < ActiveRecord::Base
  validates :manufacturer_id, presence: true, uniqueness: { scope: :color, :year, :mileage}
  validates :color, presence: true
  validates :year, presence: true, length: 4, inclusion: { within: 1920..2014 }, message: "%{value} is not a valid year."
  validates :mileage, presence: true

  belongs_to :manufacturer
end
