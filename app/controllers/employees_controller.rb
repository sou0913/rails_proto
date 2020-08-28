class EmployeesController < ApplicationController
  # GET employees?page=1
  def index
    employees = Employee.page(params[:page])
    total_rows = Employee.count
    render json: { 
      employees: employees,
      total_rows: total_rows
    }
  end

  # GET employees/1
  def show
    employee = Employee.find(params[:id])
    render json: employee
  end
end
