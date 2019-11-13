class CategoriesController < ApplicationController

    def index
        categories = Category.all
        render json: categories
    end

    def show
        category = Category.find_by(id: params[:id])
        render json: {id: category.id, name: category.name, task: category.tasks}
    end

    def create
        @category = Category.create(category_params)
        # send back new catgeroy
        render json: @category, status: :created
    end



    private

    def category_params
        params.require(:category).permit(:name)
    end
end
