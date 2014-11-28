class PesquisadoresController < ApplicationController
  
  def index
  
	@pesquisadores = Pesquisador.all
  
  end
  
  def create
  
	@pesquisador = Pesquisador.new(params[:pesquisador])
  
  end
  
end