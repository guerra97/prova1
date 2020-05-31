class AddPasswordDigestToUtenti < ActiveRecord::Migration[6.0]
  def change
    add_column :utenti, :password_digest, :string
  end
end
