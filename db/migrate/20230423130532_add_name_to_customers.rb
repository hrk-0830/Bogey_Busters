class AddNameToCustomers < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :name, :string, default: "ゴルファー"
  end
end
