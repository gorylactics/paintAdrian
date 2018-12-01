class Zombie1sController < ApplicationController
  before_action :set_zombie1, only: [:show, :edit, :update, :destroy]

  # GET /zombie1s
  # GET /zombie1s.json
  def index
    @zombie1s = Zombie1.all
  end

  # GET /zombie1s/1
  # GET /zombie1s/1.json
  def show
  end

  # GET /zombie1s/new
  def new
    @zombie1 = Zombie1.new
  end

  # GET /zombie1s/1/edit
  def edit
  end

  # POST /zombie1s
  # POST /zombie1s.json
  def create
    @zombie1 = Zombie1.new(zombie1_params)

    respond_to do |format|
      if @zombie1.save
        format.html { redirect_to @zombie1, notice: 'Zombie1 was successfully created.' }
        format.json { render :show, status: :created, location: @zombie1 }
      else
        format.html { render :new }
        format.json { render json: @zombie1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zombie1s/1
  # PATCH/PUT /zombie1s/1.json
  def update
    respond_to do |format|
      if @zombie1.update(zombie1_params)
        format.html { redirect_to @zombie1, notice: 'Zombie1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @zombie1 }
      else
        format.html { render :edit }
        format.json { render json: @zombie1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zombie1s/1
  # DELETE /zombie1s/1.json
  def destroy
    @zombie1.destroy
    respond_to do |format|
      format.html { redirect_to zombie1s_url, notice: 'Zombie1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zombie1
      @zombie1 = Zombie1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zombie1_params
      params.require(:zombie1).permit(:name, :humanoMordido1, :integer)
    end
end
