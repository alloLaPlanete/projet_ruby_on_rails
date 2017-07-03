class OrganismeReferentsController < ApplicationController
  before_action :set_organisme_referent, only: [:show, :edit, :update, :destroy]

  # GET /organisme_referents
  # GET /organisme_referents.json
  def index
    @organisme_referents = OrganismeReferent.all
  end

  # GET /organisme_referents/1
  # GET /organisme_referents/1.json
  def show
  end

  # GET /organisme_referents/new
  def new
    @organisme_referent = OrganismeReferent.new
  end

  # GET /organisme_referents/1/edit
  def edit
  end

  # POST /organisme_referents
  # POST /organisme_referents.json
  def create
    @organisme_referent = OrganismeReferent.new(organisme_referent_params)

    respond_to do |format|
      if @organisme_referent.save
        format.html { redirect_to @organisme_referent, notice: 'Organisme referent was successfully created.' }
        format.json { render :show, status: :created, location: @organisme_referent }
      else
        format.html { render :new }
        format.json { render json: @organisme_referent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organisme_referents/1
  # PATCH/PUT /organisme_referents/1.json
  def update
    respond_to do |format|
      if @organisme_referent.update(organisme_referent_params)
        format.html { redirect_to @organisme_referent, notice: 'Organisme referent was successfully updated.' }
        format.json { render :show, status: :ok, location: @organisme_referent }
      else
        format.html { render :edit }
        format.json { render json: @organisme_referent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organisme_referents/1
  # DELETE /organisme_referents/1.json
  def destroy
    @organisme_referent.destroy
    respond_to do |format|
      format.html { redirect_to organisme_referents_url, notice: 'Organisme referent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organisme_referent
      @organisme_referent = OrganismeReferent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def organisme_referent_params
      params.require(:organisme_referent).permit(:nomOrganisme, :adresseNoCivique, :adresseRue, :adresseVille, :adresseProvince, :adresseEtat, :adresseCodePostal, :telephoneBureau, :adresseTelecopie, :courriel, :siteWeb)
    end
end
