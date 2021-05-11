class Employee < ApplicationRecord
  has_many :salaries, :shifts, dependent: :destroy
  validates :name, :email, :password, presence: true
  validates :pay_rate, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
