class DosesController < ApplicationController

def new
    # we need @restaurant in our `simple_form_for`
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
    @ingredients = Ingredient.all
end


def create
  @cocktail = Cocktail.find(params[:cocktail_id])
  @ingredient = Ingredient.find(params[:cocktail_id])
  allowed_params = params.require(:dose).permit(:description, :ingredient_id)
  @dose = Dose.new(allowed_params)
  @dose.cocktail = @cocktail
  @dose.save!
  redirect_to cocktail_path(@cocktail)
end


end
