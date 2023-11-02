json.extract! employee, :id, :name, :cpf, :employed_on, :remarks, :created_at, :updated_at
json.url employee_url(employee, format: :json)
