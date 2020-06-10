class LineaOrdine < ApplicationRecord
  belongs_to :prodotto
  belongs_to :carrello

  def prezzo_totale
    prodotto.prezzo * quantity
  end
end
