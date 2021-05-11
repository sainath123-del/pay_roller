class Salary < ApplicationRecord
  belongs_to :employee
  has_one :employee
  validates :gross_salary, :net_salary, presence: true
end
