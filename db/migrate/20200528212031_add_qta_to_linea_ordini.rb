class AddQtaToLineaOrdini < ActiveRecord::Migration[6.0]
  def change
    add_column :linea_ordini, :qta, :decimal, default: 1
  end
end
