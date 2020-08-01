class Salesman < Employee
  def calc_salary
    200_000 + 50_000 * service_years
  end
end