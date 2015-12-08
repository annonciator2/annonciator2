class KebabsController < ApplicationController
  before_action :set_kebab, only: [:show, :edit, :update, :destroy]

  # GET /kebabs
  # GET /kebabs.json
  def index
    @kebabs = Kebab.all
  end

  # GET /kebabs/1
  # GET /kebabs/1.json
  def show
  end

  # GET /kebabs/new
  def new
    @kebab = Kebab.new
  end

  # GET /kebabs/1/edit
  def edit
  end

  # POST /kebabs
  # POST /kebabs.json
  def create
    @kebab = Kebab.new(kebab_params)

    respond_to do |format|
      if @kebab.save
        format.html { redirect_to @kebab, notice: 'Kebab was successfully created.' }
        format.json { render :show, status: :created, location: @kebab }
      else
        format.html { render :new }
        format.json { render json: @kebab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kebabs/1
  # PATCH/PUT /kebabs/1.json
  def update
    respond_to do |format|
      if @kebab.update(kebab_params)
        format.html { redirect_to @kebab, notice: 'Kebab was successfully updated.' }
        format.json { render :show, status: :ok, location: @kebab }
      else
        format.html { render :edit }
        format.json { render json: @kebab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kebabs/1
  # DELETE /kebabs/1.json
  def destroy
    @kebab.destroy
    respond_to do |format|
      format.html { redirect_to kebabs_url, notice: 'Kebab was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kebab
      @kebab = Kebab.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kebab_params
      params.require(:kebab).permit(:name, :addresse, :note_moyenne, :latlong, :tel)
    end
end
