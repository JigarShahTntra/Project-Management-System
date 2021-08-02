# frozen_string_literal: true

# Employee-Module
module Admin
  # Employee-Controller
  class EmployeesController < ApplicationController
    def index
      @employees = Employee.all
      @q = @employees.ransack(params[:q])
      @employees = pagination(@q.result)
    end

    def show
      @employee = Employee.find(params[:id])
    end

    def new
      @employee = Employee.new
      @employee.build_profile
      @employee.build_profile.build_financial
    end

    def create
      @employee = Employee.new(user_params)
      if @employee.save
        redirect_to admin_employees_path
      else
        render :new
      end
    end

    def edit
      @employee = Employee.find_by(id: params[:id])
      @employee.profile
      @employee.financial
    end

    def update
      @employee = Employee.find_by(id: params[:id])

      if @employee.update(user_params)
        redirect_to admin_employees_path
      else
        render :edit
      end
    end

    def import
      Employee.import(params[:file])
      redirect_to admin_employees_path, notice: 'Added Successfully'
    end

    private

    def user_params
      params.require(:employee).permit(:name, :email,
                          :phone, profile_attributes:
                          [:id, :aadhar_number, :experience, :prof_type,
                           :position, { financial_attributes:
                          %i[id bank_name ifsc micr bank_address] }])
    end
  end
end
