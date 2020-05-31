class CreateCarrelli < ActiveRecord::Migration[6.0]
  def change
    create_table :carrelli do |t|

      t.timestamps
    end
  end
end
