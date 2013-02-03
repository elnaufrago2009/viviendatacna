class NormativosController < ApplicationController
  # GET /normativos
  # GET /normativos.json
  layout "back-end"
  def index
    @normativos = Normativo.paginate(:page => params[:page], :per_page => 2, :conditions => ['lower (nombre) like ? AND tipo like ?', "%#{params[:search]}%", "%#{params[:tipo]}%"]).order("id Asc")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @normativos }
    end
  end

  # GET /normativos/1
  # GET /normativos/1.json
  def show
    @normativo = Normativo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @normativo }
    end
  end

  # GET /normativos/new
  # GET /normativos/new.json
  def new
    @normativo = Normativo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @normativo }
    end
  end

  # GET /normativos/1/edit
  def edit
    @normativo = Normativo.find(params[:id])
  end

  # POST /normativos
  # POST /normativos.json
  def create
    @normativo = Normativo.new(params[:normativo])

    respond_to do |format|
      if @normativo.save
        format.html { redirect_to @normativo, notice: 'Normativo was successfully created.' }
        format.json { render json: @normativo, status: :created, location: @normativo }
      else
        format.html { render action: "new" }
        format.json { render json: @normativo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /normativos/1
  # PUT /normativos/1.json
  def update
    @normativo = Normativo.find(params[:id])

    respond_to do |format|
      if @normativo.update_attributes(params[:normativo])
        format.html { redirect_to @normativo, notice: 'Normativo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @normativo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /normativos/1
  # DELETE /normativos/1.json
  def destroy
    @normativo = Normativo.find(params[:id])
    @normativo.destroy

    respond_to do |format|
      format.html { redirect_to normativos_url }
      format.json { head :no_content }
    end
  end
end
