class RecipesController < ApplicationController
    def show
        @recipe = Recipe.find(params[:id])
    end
    def new
        @recipe = Recipe.new
    end
    def create
        @recipe = Recipe.new(params.require(:recipe).permit(:title, :recipe_type, :cuisine, :difficulty, :cook_time))
    end
nd