class CelebritiesController < ApplicationController
  before_action :set_celebrity, only: [:show, :edit, :update, :destroy]
  before_action  :authenticate_user!
  # GET /celebrities
  # GET /celebrities.json
  def index
    @celebrities = Celebrity.all
  end

  # GET /celebrities/1
  # GET /celebrities/1.json
  def show
  end

  # GET /celebrities/new
  def new
    @celebrity = current_user.celebrities.build
  end

  # GET /celebrities/1/edit
  def edit
  end

  # POST /celebrities
  # POST /celebrities.json
  def create
    @celebrity = current_user.celebrities.build(celebrity_params)

    respond_to do |format|
      if @celebrity.save
        format.html { redirect_to @celebrity, notice: 'Celebrity was successfully created.' }
        format.json { render :show, status: :created, location: @celebrity }
      else
        format.html { render :new }
        format.json { render json: @celebrity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /celebrities/1
  # PATCH/PUT /celebrities/1.json
  def update
    respond_to do |format|
      if @celebrity.update(celebrity_params)
        format.html { redirect_to @celebrity, notice: 'Celebrity was successfully updated.' }
        format.json { render :show, status: :ok, location: @celebrity }
      else
        format.html { render :edit }
        format.json { render json: @celebrity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /celebrities/1
  # DELETE /celebrities/1.json
  def destroy
    @celebrity.destroy
    respond_to do |format|
      format.html { redirect_to celebrities_url, notice: 'Celebrity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_celebrity
      @celebrity = Celebrity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def celebrity_params
      params.require(:celebrity).permit(:name, :twiiter_link, :age, :image, :movie_id)
    end
end
