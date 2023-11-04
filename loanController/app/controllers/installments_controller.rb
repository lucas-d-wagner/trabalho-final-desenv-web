class InstallmentsController < ApplicationController
    before_action :authorize
    include InstallmentsHelper

    def generate_installments
        @intallments = generate_installments_with_params(params[:number_of_installments].to_i, params[:value].to_f, params[:first_due_date].to_date)
        
        respond_to do |format|
            format.json { render json: @intallments }
        end
    end

    def pay_installment
        @installment = Installment.find(params[:id])
        @loan = Loan.find(@installment.loan_id)

        if @installment.update(paid_value: @installment.value)
            all_installments_are_paid = @loan.installments.all? { |i| i.value == i.paid_value }

            if all_installments_are_paid
                @loan.update(active: false)
            end

        end
        
        respond_to do |format|
            format.html { redirect_to loan_url(@loan), notice: "The installment was sucessfuly been paid." }
          end
    end
    
end
