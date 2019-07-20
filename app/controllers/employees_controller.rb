class EmployeesController < ApplicationController
    def index
        @employees = Employee.order(:name).all
        respond_to do |format|
            format.html
            format.pdf do
                pdf = EmployeePdf.new(@employees)
                send_data pdf.render, 
                    filename: 'pdf', 
                    type: 'application/pdf', 
                    disposition: 'attachment'
            end
        end
    end
end
