class ConspiraciesController < ApplicationController
  before_action :set_conspiracy, only: [:show, :edit, :update, :destroy]

  # GET /conspiracies
  # GET /conspiracies.json
  def index
    @conspiracies = Conspiracy.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 10)
  end

  # GET /conspiracies/1
  # GET /conspiracies/1.json
  def show
  end

  # GET /conspiracies/new
  def new
    @conspiracy = Conspiracy.new
  end

  # GET /conspiracies/1/edit
  def edit
  end

  # POST /conspiracies
  # POST /conspiracies.json
  def create
    @conspiracy = Conspiracy.new(conspiracy_params)

    respond_to do |format|
      if @conspiracy.save
        format.html { redirect_to @conspiracy, notice: 'Conspiracy was successfully created.' }
        format.json { render :show, status: :created, location: @conspiracy }
      else
        format.html { render :new }
        format.json { render json: @conspiracy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conspiracies/1
  # PATCH/PUT /conspiracies/1.json
  def update
    respond_to do |format|
      if @conspiracy.update(conspiracy_params)
        format.html { redirect_to @conspiracy, notice: 'Conspiracy was successfully updated.' }
        format.json { render :show, status: :ok, location: @conspiracy }
      else
        format.html { render :edit }
        format.json { render json: @conspiracy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conspiracies/1
  # DELETE /conspiracies/1.json
  def destroy
    @conspiracy.destroy
    respond_to do |format|
      format.html { redirect_to conspiracies_url, notice: 'Conspiracy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conspiracy
      @conspiracy = Conspiracy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def conspiracy_params
      params.require(:conspiracy).permit(:title, :body, :image)
    end
end
