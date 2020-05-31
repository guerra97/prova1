class VetrinaController < ApplicationController
  def index
    @prodotti = Prodotto.order(:nome)
  end
end
