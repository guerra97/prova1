class CarrelliController < ApplicationController
  before_action :set_carrello, only: [:show, :edit, :update, :destroy]

  # GET /carrelli
  # GET /carrelli.json
  def index
    @carrelli = Carrello.all
  end

  # GET /carrelli/1
  # GET /carrelli/1.json
  def show
  end

  # GET /carrelli/new
  def new
    @carrello = Carrello.new
  end

  # GET /carrelli/1/edit
  def edit
  end

  # POST /carrelli
  # POST /carrelli.json
  def create
    @carrello = Carrello.new(carrello_params)

    respond_to do |format|
      if @carrello.save
        format.html { redirect_to @carrello, notice: 'Carrello was successfully created.' }
        format.json { render :show, status: :created, location: @carrello }
      else
        format.html { render :new }
        format.json { render json: @carrello.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carrelli/1
  # PATCH/PUT /carrelli/1.json
  def update
    respond_to do |format|
      if @carrello.update(carrello_params)
        format.html { redirect_to @carrello, notice: 'Carrello was successfully updated.' }
        format.json { render :show, status: :ok, location: @carrello }
      else
        format.html { render :edit }
        format.json { render json: @carrello.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carrelli/1
  # DELETE /carrelli/1.json
  def destroy
    @carrello.destroy
    respond_to do |format|
      format.html { redirect_to carrelli_url, notice: 'Carrello was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carrello
      @carrello = Carrello.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def carrello_params
      params.fetch(:carrello, {})
    end
end
