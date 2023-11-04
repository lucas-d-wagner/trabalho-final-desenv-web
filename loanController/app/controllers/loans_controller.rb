class LoansController < ApplicationController
    before_action :authorize
    before_action :set_loan, only: %i[ show ]
    before_action :set_employee_options, only: %i[ create new ]
    include InstallmentsHelper
  
    def index
        @loans = Loan.all
    end

    def show
    end

    def new
        @loan = Loan.new
        @loan.date = Date.current
        @loan.installments.build
        @installment_amount_selector = [3, 6, 9, 12]
    end

    def create
        @loan = Loan.new(loan_params)
        @loan.active = true

        #gambiara do carajo
        @loan.installments = generate_installments_with_params(@loan.number_of_installments, @loan.value, @loan.first_due_date)

        respond_to do |format|
            if @loan.save
                format.html { redirect_to loan_url(@loan), notice: "Loan was successfully created." }
            else
                format.html { render :new, status: :unprocessable_entity }
            end
        end
    end 

    private
        def set_loan
            @loan = Loan.find(params[:id])
        end

        def loan_params
            params.require(:loan).permit(:date, :active, :first_due_date, :value, :number_of_installments, :employee_id, installments_attributes: [:due_date, :value, :paid_value, :number])
        end
    
        def set_employee_options
            @employee_options = Employee.all.pluck(:name, :id)
        end
      
end
