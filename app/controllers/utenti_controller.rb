class UtentiController < ApplicationController
  before_action :set_utente, only: [:show, :edit, :update, :destroy]

  # GET /utenti
  # GET /utenti.json
  def index
    @utenti = Utente.all
  end

  # GET /utenti/1
  # GET /utenti/1.json
  def show
    @utente = Utente.find(params[:id])
  end

  # GET /utenti/new
  def new
    @utente = Utente.new
  end

  # GET /utenti/1/edit
  def edit
  end

  # POST /utenti
  # POST /utenti.json
  def create
    @utente = Utente.new(utente_params)

    respond_to do |format|
      if @utente.save
        format.html { redirect_to @utente, notice: 'Utente was successfully created.' }
        format.json { render :show, status: :created, location: @utente }
      else
        format.html { render :new }
        format.json { render json: @utente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /utenti/1
  # PATCH/PUT /utenti/1.json
  def update
    respond_to do |format|
      if @utente.update(utente_params)
        format.html { redirect_to @utente, notice: 'Utente was successfully updated.' }
        format.json { render :show, status: :ok, location: @utente }
      else
        format.html { render :edit }
        format.json { render json: @utente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /utenti/1
  # DELETE /utenti/1.json
  def destroy
    @utente.destroy
    respond_to do |format|
      format.html { redirect_to utenti_url, notice: 'Utente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_utente
      @utente = Utente.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def utente_params
      params.require(:utente).permit(:nome, :email, :password, :password_confirmation)
    end
end
