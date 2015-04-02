class GasBill < ActiveRecord::Base
  belongs_to :user
  validates :amount, presence: { message: "Please include an amount" }
  validates :year, presence: { message: "Please include a year" }
  validates :year, 
  presence: { message: "Please include a year" }, 
  inclusion: {in: 1900..Date.today.year}, format: {with: /(19|20)\d{2}/i, message: "Please enter a valid four digit year"}
end
