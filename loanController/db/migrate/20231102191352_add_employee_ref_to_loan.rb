class AddEmployeeRefToLoan < ActiveRecord::Migration[5.2]
  def change
    add_reference :loans, :employee, foreign_key: true
  end
end
