class LineaOrdine < ApplicationRecord
  belongs_to :prodotto
  belongs_to :carrello
end
