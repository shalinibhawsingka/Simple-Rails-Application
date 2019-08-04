class EmployeesController < ApplicationController
  def index
    @employees = Employee.all.order_by_name
    respond_to do |format|
      format.html
      format.pdf do
        pdf = EmployeePdf.new(@employees)
        send_data pdf.render,
                  filename: "employee.pdf",
                  type: "application/pdf",
                  disposition: "attachment"
      end
    end
  end
end
