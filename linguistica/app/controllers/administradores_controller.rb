class AdministradoresController < ApplicationController
  
  layout 'admin'
  
  def index
  
	@administradores = Administrador.all
  
  end
  
  def create
  
	@administrador = Administrador.new(params[:administrador])
  
  end
  
  #--------------------------------------------------------------------------
    
  def novo_projeto
  
	@administrador = Administrador.new
  
  end

def index
	render layout: 'admin'
end
  
end