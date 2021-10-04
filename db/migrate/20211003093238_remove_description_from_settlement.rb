class RemoveDescriptionFromSettlement < ActiveRecord::Migration[6.1]
  def change
    remove_column :settlements, :description, :string
  end
end
