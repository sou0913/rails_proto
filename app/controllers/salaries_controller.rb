class SalariesController < ApplicationController
  # GET salaries/1
  def show
    employee = Employee.find(params[:id])
    salary =  employee.calc_salary
    render status: 200, body: "user_id:#{params[:id]}の給料は#{salary}円です"
  end
end