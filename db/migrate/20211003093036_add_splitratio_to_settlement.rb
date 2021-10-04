class AddSplitratioToSettlement < ActiveRecord::Migration[6.1]
  def change
    add_column :settlements, :split_ratio, :integer
  end
end
