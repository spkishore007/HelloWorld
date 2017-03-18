class KishoresController < ApplicationController
  before_action :set_kishore, only: [:show, :edit, :update, :destroy]

  # GET /kishores
  # GET /kishores.json
  def index
    @kishores = Kishore.all
  end

  # GET /kishores/1
  # GET /kishores/1.json
  def show
  end

  # GET /kishores/new
  def new
    @kishore = Kishore.new
  end

  # GET /kishores/1/edit
  def edit
  end

  # POST /kishores
  # POST /kishores.json
  def create
    @kishore = Kishore.new(kishore_params)

    respond_to do |format|
      if @kishore.save
        format.html { redirect_to @kishore, notice: 'Kishore was successfully created.' }
        format.json { render :show, status: :created, location: @kishore }
      else
        format.html { render :new }
        format.json { render json: @kishore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kishores/1
  # PATCH/PUT /kishores/1.json
  def update
    respond_to do |format|
      if @kishore.update(kishore_params)
        format.html { redirect_to @kishore, notice: 'Kishore was successfully updated.' }
        format.json { render :show, status: :ok, location: @kishore }
      else
        format.html { render :edit }
        format.json { render json: @kishore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kishores/1
  # DELETE /kishores/1.json
  def destroy
    @kishore.destroy
    respond_to do |format|
      format.html { redirect_to kishores_url, notice: 'Kishore was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kishore
      @kishore = Kishore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kishore_params
      params.require(:kishore).permit(:name)
    end
end
