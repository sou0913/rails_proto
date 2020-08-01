class EmployeesController < ApplicationController
  def index
    employees = Employee.all
    render json: employees
  end

  # GET employees/1
  def show
    employee = Employee.find(params[:id])
    render json: employee
  end
end
