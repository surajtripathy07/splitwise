class CreateSettlementInputs < ActiveRecord::Migration[6.1]
  def change
    create_table :settlement_inputs do |t|
      t.string :paid_by
      t.string :description
      t.float :amount

      t.timestamps
    end
  end
end
