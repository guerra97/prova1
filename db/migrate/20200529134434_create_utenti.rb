class CreateUtenti < ActiveRecord::Migration[6.0]
  def change
    create_table :utenti do |t|
      t.string :nome
      t.string :email

      t.timestamps
    end
  end
end
