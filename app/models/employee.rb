class Employee < ApplicationRecord
  validates :name, presence: true
  validates :service_years, presence: true

  def calc_salary
    raise StandardError
  end
end
