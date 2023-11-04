class Loan < ApplicationRecord
    belongs_to :employee
    has_many :installments
    accepts_nested_attributes_for :installments
end
