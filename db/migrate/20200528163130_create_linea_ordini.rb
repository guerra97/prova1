class CreateLineaOrdini < ActiveRecord::Migration[6.0]
  def change
    create_table :linea_ordini do |t|
      t.references :prodotto, null: false, foreign_key: true
      t.belongs_to :carrello, null: false, foreign_key: true

      t.timestamps
    end
  end
end
