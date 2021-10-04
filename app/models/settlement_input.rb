class SettlementInput < ApplicationRecord
  has_many :settlements
  accepts_nested_attributes_for :settlements
end
