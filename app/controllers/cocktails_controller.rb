class CocktailsController < ApplicationController

def index
@cocktails = Cocktail.all
end


def show
@cocktail = Cocktail.find(params[:id])
end


def new
@cocktail =  Cocktail.new

end

def create
allowed_params = params.require(:cocktail).permit(:name)
@cocktail = Cocktail.new(allowed_params).save
redirect_to cocktails_path


=begin
@Plante.save!
if @Plante.save! // renvoie un booléen true ou false
redirect_to gardens_path(@garden)
else
render “gardens/show”
end
=end



end


end
