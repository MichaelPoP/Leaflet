class Group < ActiveRecord::Base
  has_many :user_groups
  has_many :users, through: :user_groups
  has_many :comments
  validates :name, presence: true, uniqueness: true
end
