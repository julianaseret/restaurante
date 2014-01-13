class PratosController < ApplicationController
  before_action :set_prato, only: [:show, :edit, :update, :destroy]

  # GET /pratos
  # GET /pratos.json
  def index
    @pratos = Prato.all
  end

  # GET /pratos/1
  # GET /pratos/1.json
  def show
  end

  # GET /pratos/new
  def new
    @prato = Prato.new
  end

  # GET /pratos/1/edit
  def edit
  end

  # POST /pratos
  # POST /pratos.json
  def create
    @prato = Prato.new(prato_params)

    respond_to do |format|
      if @prato.save
        format.html { redirect_to @prato, notice: 'Prato was successfully created.' }
        format.json { render action: 'show', status: :created, location: @prato }
      else
        format.html { render action: 'new' }
        format.json { render json: @prato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pratos/1
  # PATCH/PUT /pratos/1.json
  def update
    respond_to do |format|
      if @prato.update(prato_params)
        format.html { redirect_to @prato, notice: 'Prato was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @prato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pratos/1
  # DELETE /pratos/1.json
  def destroy
    @prato.destroy
    respond_to do |format|
      format.html { redirect_to pratos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prato
      @prato = Prato.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prato_params
      params.require(:prato).permit(:nome, :tipo, :preco)
    end
end