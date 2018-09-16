class Recipe < ApplicationRecord
   
def create
    @recipe = Recipe.new(recipe_params)
   
    @recipe.save
    redirect_to @recipe
  end
   
  private
    def recipe_params
      params.require(:recipe).permit(:title, :recipe_type, :cuisine, :difficulty, :cook_time)
    end
end
