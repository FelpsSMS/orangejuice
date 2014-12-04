class FotosController < ApplicationController
  
  def index
	@fotos = Foto.all
	
  
  end
  
  def create
  
	@foto = Foto.new(params[:foto])
  
  end
  
end
