class Shift < ApplicationRecord
  belongs_to :employee
  has_one :employee
  validates :start_time, :end_time, :date, presence: true
end
