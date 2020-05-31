class CreateProdotti < ActiveRecord::Migration[6.0]
  def change
    create_table :prodotti do |t|
      t.string :nome
      t.decimal :prezzo
      t.string :descrizione

      t.timestamps
    end
  end
end
