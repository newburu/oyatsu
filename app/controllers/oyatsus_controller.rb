class OyatsusController < ApplicationController
  before_action :set_oyatsu, only: [:show, :edit, :update, :destroy]

  # GET /oyatsus
  # GET /oyatsus.json
  def index
    @oyatsus = Oyatsu.all
  end

  # GET /oyatsus/1
  # GET /oyatsus/1.json
  def show
  end

  # GET /oyatsus/new
  def new
    @oyatsu = Oyatsu.new
  end

  # GET /oyatsus/1/edit
  def edit
  end

  # POST /oyatsus
  # POST /oyatsus.json
  def create
    @oyatsu = Oyatsu.new(oyatsu_params)

    respond_to do |format|
      if @oyatsu.save
        format.html { redirect_to @oyatsu, notice: 'Oyatsu was successfully created.' }
        format.json { render :show, status: :created, location: @oyatsu }
      else
        format.html { render :new }
        format.json { render json: @oyatsu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oyatsus/1
  # PATCH/PUT /oyatsus/1.json
  def update
    respond_to do |format|
      if @oyatsu.update(oyatsu_params)
        format.html { redirect_to @oyatsu, notice: 'Oyatsu was successfully updated.' }
        format.json { render :show, status: :ok, location: @oyatsu }
      else
        format.html { render :edit }
        format.json { render json: @oyatsu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oyatsus/1
  # DELETE /oyatsus/1.json
  def destroy
    @oyatsu.destroy
    respond_to do |format|
      format.html { redirect_to oyatsus_url, notice: 'Oyatsu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oyatsu
      @oyatsu = Oyatsu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def oyatsu_params
      params.require(:oyatsu).permit(:name, :category_id, :image, :detail, :maker, :watch_at, :site_url)
    end
end
