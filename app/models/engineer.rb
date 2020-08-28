class Engineer < Employee
  def calc_salary
    300_000 + 20_000 * service_years
  end
end