class DirectoriosController < ApplicationController
  # GET /directorios
  # GET /directorios.json
  layout "back-end"
  def index    
    @directorios = Directorio.paginate(:page => params[:page], :per_page => 2, :conditions => ['lower (nombre) like ? AND tipo like ?', "%#{params[:search]}%", "%#{params[:tipo]}%"]).order("id Asc")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @directorios }
    end
  end

  # GET /directorios/1
  # GET /directorios/1.json
  def show
    @directorio = Directorio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @directorio }
    end
  end

  # GET /directorios/new
  # GET /directorios/new.json
  def new
    @directorio = Directorio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @directorio }
    end
  end

  # GET /directorios/1/edit
  def edit
    @directorio = Directorio.find(params[:id])
  end

  # POST /directorios
  # POST /directorios.json
  def create
    @directorio = Directorio.new(params[:directorio])

    respond_to do |format|
      if @directorio.save
        format.html { redirect_to @directorio, notice: 'Directorio was successfully created.' }
        format.json { render json: @directorio, status: :created, location: @directorio }
      else
        format.html { render action: "new" }
        format.json { render json: @directorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /directorios/1
  # PUT /directorios/1.json
  def update
    @directorio = Directorio.find(params[:id])

    respond_to do |format|
      if @directorio.update_attributes(params[:directorio])
        format.html { redirect_to @directorio, notice: 'Directorio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @directorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /directorios/1
  # DELETE /directorios/1.json
  def destroy
    @directorio = Directorio.find(params[:id])
    @directorio.destroy

    respond_to do |format|
      format.html { redirect_to directorios_url }
      format.json { head :no_content }
    end
  end
end
