class CreateSettlements < ActiveRecord::Migration[6.1]
  def change
    create_table :settlements do |t|
      t.string :user_name
      t.string :description
      t.float :amount
      t.string :owes_to
      t.boolean :is_paid

      t.timestamps
    end
  end
end
