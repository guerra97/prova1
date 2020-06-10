class AddQuantityToLineaOrdini < ActiveRecord::Migration[6.0]
  def change
    add_column :linea_ordini, :quantity, :integer, default: 1
  end
end
