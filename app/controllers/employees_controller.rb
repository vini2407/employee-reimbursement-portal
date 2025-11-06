class EmployeesController < ApplicationController
  before_action :require_admin
  before_action :set_employee, only: [:edit, :update, :destroy]

  def index
    @employees = Employee.includes(:department)
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to employees_path, notice: "Employee created successfully."
    else
      render :new
    end
  end

  def edit; end

  def update
    if @employee.update(employee_params)
      redirect_to employees_path, notice: "Employee updated successfully."
    else
      render :edit
    end
  end

  def destroy
    @employee.destroy
    redirect_to employees_path, notice: "Employee deleted successfully."
  end

  private

  def set_employee
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :email, :designation, :department_id, :user_id)
  end
end
