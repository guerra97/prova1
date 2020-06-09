class Carrello < ApplicationRecord
  has_many :linea_ordini

  def addProdotto (prodotto)

    ordine_corrente = linea_ordini.find_by(prodotto_id:prodotto)

    if ordine_corrente
        ordine_corrente.quantity += 1
    else
        ordine_corrente = linea_ordini.build(prodotto_id: prodotto.id)
    end
    ordine_corrente
  end

end
