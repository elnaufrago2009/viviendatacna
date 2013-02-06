class ComunicadosController < ApplicationController
  # GET /comunicados
  # GET /comunicados.json
  layout "back-end"
  def index
    @comunicados = Comunicado.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comunicados }
    end
  end

  # GET /comunicados/1
  # GET /comunicados/1.json
  def show
    @comunicado = Comunicado.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comunicado }
    end
  end

  # GET /comunicados/new
  # GET /comunicados/new.json
  def new
    @comunicado = Comunicado.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comunicado }
    end
  end

  # GET /comunicados/1/edit
  def edit
    @comunicado = Comunicado.find(params[:id])
  end

  # POST /comunicados
  # POST /comunicados.json
  def create
    @comunicado = Comunicado.new(params[:comunicado])

    respond_to do |format|
      if @comunicado.save
        format.html { redirect_to @comunicado, notice: 'Comunicado was successfully created.' }
        format.json { render json: @comunicado, status: :created, location: @comunicado }
      else
        format.html { render action: "new" }
        format.json { render json: @comunicado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /comunicados/1
  # PUT /comunicados/1.json
  def update
    @comunicado = Comunicado.find(params[:id])

    respond_to do |format|
      if @comunicado.update_attributes(params[:comunicado])
        format.html { redirect_to @comunicado, notice: 'Comunicado was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comunicado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comunicados/1
  # DELETE /comunicados/1.json
  def destroy
    @comunicado = Comunicado.find(params[:id])
    @comunicado.destroy

    respond_to do |format|
      format.html { redirect_to comunicados_url }
      format.json { head :no_content }
    end
  end
end
