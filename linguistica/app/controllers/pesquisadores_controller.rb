class PesquisadoresController < ApplicationController
  before_action :set_pesquisador, only: [:show, :edit, :update, :destroy, :foto]

  

  # GET /pesquisadores
  # GET /pesquisadores.json
  def index
    @pesquisadores = Pesquisador.all
  end

  # GET /pesquisadores/1
  # GET /pesquisadores/1.json
  def show
  end

  # GET /pesquisadores/new
  def new
    @pesquisador = Pesquisador.new
  end

  # GET /pesquisadores/1/edit
  def edit
  end

  # POST /pesquisadores
  # POST /pesquisadores.json
  def create
    @pesquisador = Pesquisador.new(pesquisador_params)

    respond_to do |format|
      if @pesquisador.save
        format.html { redirect_to @pesquisador, notice: 'Pesquisador was successfully created.' }
        format.json { render :show, status: :created, location: @pesquisador }
      else
        format.html { render :new }
        format.json { render json: @pesquisador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pesquisadores/1
  # PATCH/PUT /pesquisadores/1.json
  def update
    respond_to do |format|
      if @pesquisador.update(pesquisador_params)
        format.html { redirect_to @pesquisador, notice: 'Pesquisador was successfully updated.' }
        format.json { render :show, status: :ok, location: @pesquisador }
      else
        format.html { render :edit }
        format.json { render json: @pesquisador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pesquisadores/1
  # DELETE /pesquisadores/1.json
  def destroy
    @pesquisador.destroy
    respond_to do |format|
      format.html { redirect_to pesquisadores_url, notice: 'Pesquisador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pesquisador
      @pesquisador = Pesquisador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pesquisador_params
      params.require(:pesquisador).permit(:pesquisador_nome, :pesquisador_cnpq, :pesquisador_contato, :foto)
    end
end
