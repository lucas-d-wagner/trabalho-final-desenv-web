class AddRoleRefToEmployee < ActiveRecord::Migration[5.2]
  def change
    add_reference :employees, :role, foreign_key: true
  end
end
