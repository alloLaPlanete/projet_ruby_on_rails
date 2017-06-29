class UsagersController < ApplicationController
  before_action :authenticate_deviseuser!
  
  before_action :set_usager, only: [:show, :edit, :update, :destroy]


  # GET /usagers
  # GET /usagers.json
  def index
    @usagers = Usager.all
  end

  # GET /usagers/1
  # GET /usagers/1.json
  def show
    
  end

  # GET /usagers/new
  def new
    @usager = Usager.new

  end

  # GET /usagers/1/edit
  def edit
  end

  # POST /usagers
  # POST /usagers.json
  def create
    @usager = current_deviseuser.usagers.build(usager_params)   #Permet de referer l'id du createur
   
    respond_to do |format|
      if @usager.save
        
        format.html { redirect_to @usager, notice: 'Usager was successfully created.' }
        format.json { render :show, status: :created, location: @usager }
      else
        format.html { render :new }
        format.json { render json: @usager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usagers/1
  # PATCH/PUT /usagers/1.json
  def update
    respond_to do |format|
      if @usager.update(usager_params)
        format.html { redirect_to @usager, notice: 'Usager was successfully updated.' }
        format.json { render :show, status: :ok, location: @usager }
      else
        format.html { render :edit }
        format.json { render json: @usager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usagers/1
  # DELETE /usagers/1.json
  def destroy
    @usager.destroy
    respond_to do |format|
      format.html { redirect_to usagers_url, notice: 'Usager was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usager
      @usager = Usager.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usager_params
      params.require(:usager).permit(:courriel, :nom, :motPasse, :role)
    end
end
