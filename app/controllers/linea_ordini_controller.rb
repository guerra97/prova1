class LineaOrdiniController < ApplicationController
  include CarrelloCorrente
  before_action :set_carrello, only: [:create]
  before_action :set_linea_ordine, only: [:show, :edit, :update, :destroy]

  # GET /linea_ordini
  # GET /linea_ordini.json
  def index
    @linea_ordini = LineaOrdine.all
  end

  # GET /linea_ordini/1
  # GET /linea_ordini/1.json
  def show
  end

  # GET /linea_ordini/new
  def new
    @linea_ordine = LineaOrdine.new
  end

  # GET /linea_ordini/1/edit
  def edit
  end

  # POST /linea_ordini
  # POST /linea_ordini.json
  def create
    prodotto = Prodotto.find(params[:prodotto_id])
    @linea_ordine = @carrello.linea_ordini.build(prodotto: prodotto)

    respond_to do |format|
      if @linea_ordine.save
        format.html { redirect_to @linea_ordine.prodotto,
                                  notice: 'Linea ordine was successfully created.' }
        format.json { render :show, status: :created, location: @linea_ordine }
      else
        format.html { render :new}
        format.json { render json: @linea_ordine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /linea_ordini/1
  # PATCH/PUT /linea_ordini/1.json
  def update
    respond_to do |format|
      if @linea_ordine.update(linea_ordine_params)
        format.html { redirect_to @linea_ordine, notice: 'Linea ordine was successfully updated.' }
        format.json { render :show, status: :ok, location: @linea_ordine }
      else
        format.html { render :edit }
        format.json { render json: @linea_ordine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /linea_ordini/1
  # DELETE /linea_ordini/1.json
  def destroy
    @linea_ordine.destroy
    respond_to do |format|
      format.html { redirect_to linea_ordini_url, notice: 'Linea ordine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_linea_ordine
      @linea_ordine = LineaOrdine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def linea_ordine_params
      params.require(:linea_ordine).permit(:prodotto_id, :carrello_id)
    end
end
