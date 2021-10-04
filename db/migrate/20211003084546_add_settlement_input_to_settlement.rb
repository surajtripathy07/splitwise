class AddSettlementInputToSettlement < ActiveRecord::Migration[6.1]
  def change
    add_reference :settlements, :settlement_input, null: false, foreign_key: true
  end
end
