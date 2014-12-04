class FotosController < ApplicationController
  
  def index
	render layout: 'default'
	@fotos = Foto.all
	
  
  end
  
  def create
  
	@foto = Foto.new(params[:foto])
  
  end
  
end
