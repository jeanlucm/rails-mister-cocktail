class CocktailsController < ApplicationController
  # before_action :set_cocktail, only: [:show]

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail), notice: 'cocktail was successfully created.'
    else
      render :new
    end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def destroy
    @cocktail.destroy
      redirect_to cocktails_url, notice: 'cocktail was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  # def set_cocktail
  #   @cocktail = cocktail.find(params[:id])
  # end

  # Never trust parameters from the scary internet, only allow the white list through.
  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end


