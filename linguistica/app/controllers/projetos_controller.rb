class ProjetosController < ApplicationController
  
  def index
  
	@projetos = Projeto.all
  
  end
  
  def create
  
	@projeto = Projeto.new(params[:projeto])
  
  end
  
  
  
  #------------------------------------------------------------------

  def show
  end
  
  def new
  
  @pesquisadores = Pesquisador.all
  @tematicas = Tematica.all
  
  @projeto = Projeto.new
  
  end
  
  
  
end
