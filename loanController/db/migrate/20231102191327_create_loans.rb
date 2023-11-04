class CreateLoans < ActiveRecord::Migration[5.2]
  def change
    create_table :loans do |t|
      t.date :date
      t.boolean :active
      t.date :first_due_date
      t.decimal :value
      t.integer :number_of_installments

      t.timestamps
    end
  end
end
