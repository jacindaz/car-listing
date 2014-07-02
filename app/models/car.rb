class Car < ActiveRecord::Base
  validates :manufacturer, presence: true, uniqueness: { scope: :mileage}
  validates :color, presence: true
  validates :year, presence: true, length: { is: 4 }, numericality: { greater_than_or_equal_to: 1920, less_than_or_equal_to: 2014 }
  validates :mileage, presence: true

  belongs_to :manufacturer
end
