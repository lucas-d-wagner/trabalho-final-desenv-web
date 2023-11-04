class CreateInstallments < ActiveRecord::Migration[5.2]
  def change
    create_table :installments do |t|
      t.date :due_date
      t.decimal :value
      t.decimal :paid_value
      t.integer :number

      t.timestamps
    end
  end
end
