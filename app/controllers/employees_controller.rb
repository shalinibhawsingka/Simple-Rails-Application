class EmployeesController < ApplicationController
	def index
		@employees = Employee.all.ord
		respond_to do |format|
			format.html
			format.pdf do
				pdf = EmployeePdf.new(@employees)
				send_data pdf.render, 
					filename: 'employee.pdf', 
					type: 'application/pdf', 
					disposition: 'attachment'
			end
		end
	end
end
