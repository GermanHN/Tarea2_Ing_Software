class RegistroMaestrosController < ApplicationController
  before_action :set_registro_maestro, only: [:show, :edit, :update, :destroy]

  # GET /registro_maestros
  # GET /registro_maestros.json
  def index
    @registro_maestros = RegistroMaestro.all
  end

  # GET /registro_maestros/1
  # GET /registro_maestros/1.json
  def show
  end

  # GET /registro_maestros/new
  def new
    @registro_maestro = RegistroMaestro.new
  end

  # GET /registro_maestros/1/edit
  def edit
  end

  # POST /registro_maestros
  # POST /registro_maestros.json
  def create
    @registro_maestro = RegistroMaestro.new(registro_maestro_params)

    respond_to do |format|
      if @registro_maestro.save
        format.html { redirect_to @registro_maestro, notice: 'Registro maestro was successfully created.' }
        format.json { render :show, status: :created, location: @registro_maestro }
      else
        format.html { render :new }
        format.json { render json: @registro_maestro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registro_maestros/1
  # PATCH/PUT /registro_maestros/1.json
  def update
    respond_to do |format|
      if @registro_maestro.update(registro_maestro_params)
        format.html { redirect_to @registro_maestro, notice: 'Registro maestro was successfully updated.' }
        format.json { render :show, status: :ok, location: @registro_maestro }
      else
        format.html { render :edit }
        format.json { render json: @registro_maestro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registro_maestros/1
  # DELETE /registro_maestros/1.json
  def destroy
    @registro_maestro.destroy
    respond_to do |format|
      format.html { redirect_to registro_maestros_url, notice: 'Registro maestro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registro_maestro
      @registro_maestro = RegistroMaestro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registro_maestro_params
      params.require(:registro_maestro).permit(:nombre, :cuenta, :area)
    end
end
