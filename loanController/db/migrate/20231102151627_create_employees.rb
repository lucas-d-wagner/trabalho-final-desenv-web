class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :cpf
      t.date :employed_on
      t.text :remarks

      t.timestamps
    end
  end
end
