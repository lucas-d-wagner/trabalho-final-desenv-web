module InstallmentsHelper

    def generate_installments_with_params(quantity, loan_value, first_due_date)
        installments = []
        current_due_date = first_due_date
        loan_value = loan_value * 1.2
        installment_value = loan_value / quantity

        quantity.times do |i|
            installments << Installment.new(number: i + 1, due_date: current_due_date, value: installment_value, paid_value: 0)
            current_due_date = current_due_date + 1.month
        end
        
        installments
    end

end
