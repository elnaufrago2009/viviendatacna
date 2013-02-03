class IniciosController < ApplicationController

	layout "front-end"

	def index
		@institucionals = Institucional.where("ver = ?", true).order("id Desc")
    @pnotices = Notice.where("tipo" => 2).limit(5).order("id Desc")
    @notices = Notice.paginate(:page => params[:page], :per_page => 5, :conditions => ['lower (titulo) like ? AND tipo = ?', "%#{params[:search]}%", 1]).order("id Asc").order("id Desc")


	end

	def paginas 
		@institucionals = Institucional.where("ver = ?", true).order("id Desc")
		@institucion = Institucional.find(params[:id])		
	end

	def directorio
		@institucionals = Institucional.where("ver = ?", true).order("id Desc")
    @directorios = Directorio.paginate(:page => params[:page], :per_page => 2, :conditions => ['lower (nombre) like ? AND tipo like ?', "%#{params[:search]}%", "%#{params[:tipo]}%"]).order("id Asc")
	end

	def directorio_detalle
		@institucionals = Institucional.where("ver = ?", true).order("id Desc")
		@directorio = Directorio.find(params[:id])
  end

  def gestion
    @institucionals = Institucional.where("ver = ?", true).order("id Desc")
    @normativos = Normativo.paginate(:page => params[:page], :per_page => 2, :conditions => ['lower (nombre) like ? AND tipo like ?', "%#{params[:search]}%", "%#{params[:tipo]}%"]).order("id Asc")
  end
end 