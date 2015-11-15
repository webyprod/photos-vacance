class SejoursController < ApplicationController
  before_action :set_sejour, only: [:show, :edit, :update, :destroy]

  # GET /sejours
  # GET /sejours.json
  def index
    @sejours = Sejour.all
  end

  # GET /sejours/1
  # GET /sejours/1.json
  def show
  end

  # GET /sejours/new
  def new
    @sejour = Sejour.new
  end

  # GET /sejours/1/edit
  def edit
  end

  # POST /sejours
  # POST /sejours.json
  def create
    @sejour = Sejour.new(sejour_params)

    respond_to do |format|
      if @sejour.save
        format.html { redirect_to @sejour, notice: 'Sejour was successfully created.' }
        format.json { render :show, status: :created, location: @sejour }
      else
        format.html { render :new }
        format.json { render json: @sejour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sejours/1
  # PATCH/PUT /sejours/1.json
  def update
    respond_to do |format|
      if @sejour.update(sejour_params)
        format.html { redirect_to @sejour, notice: 'Sejour was successfully updated.' }
        format.json { render :show, status: :ok, location: @sejour }
      else
        format.html { render :edit }
        format.json { render json: @sejour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sejours/1
  # DELETE /sejours/1.json
  def destroy
    @sejour.destroy
    respond_to do |format|
      format.html { redirect_to sejours_url, notice: 'Sejour was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sejour
      @sejour = Sejour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sejour_params
      params.require(:sejour).permit(:lieu, :description, :note, :recommandation)
    end
end
