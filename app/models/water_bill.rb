class WaterBill < ActiveRecord::Base
  belongs_to :user
  validates :amount, presence: { message: "Please include an amount" }
  validates :year, presence: { message: "Please include a year" }
  validates_uniqueness_of :month, scope: :year, message: "A bill for that month already exists"
end
