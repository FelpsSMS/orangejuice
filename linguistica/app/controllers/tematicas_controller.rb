class TematicasController < ApplicationController
  
  def index
  
	@tematicas = Tematica.all
  
  end

  def create
  
	@tematica = Tematica.new(params[:tematica])
	if @tematica.save
      redirect_to :action => 'show', :id => @tematica.id
    else
      render :action => 'new'
    end
  end
  
  
  def show
  
	@tematicas = Tematica.all
  
  end
  
  def new
	@tematica = Tematica.new
  end
  
  def edit
  
   @tematica = Tematica.find params[:id]
   
  end
  
  def destroy
    @tematica = Tematica.find params[:id]
    @tematica.destroy
	redirect_to action: 'show'
    
  end
  
  def update
    @tematica = Tematica.find params[:id]
    if @tematica.update_attributes(params[:tematica])
      redirect_to :action => 'show', :id => @tematica.id
    end
  end
  
  #---------------------------------------------------------------------------------------------------------------------------------------------
  
   private
   
  def tematica_params
    # This says that params[:post] is required, but inside that, only params[:post][:title] and params[:post][:body] are permitted
    # Unpermitted params will be stripped out
    params.require(:tematica).permit(:tematica_titulo, :tematica_descricao)
  end
  
end
