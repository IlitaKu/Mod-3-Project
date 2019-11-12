class CategoriesController < ApplicationController

    def index
        @categories = Category.all
        render({json: @categories, status: :ok})
    end

    def show
        @category = Category.all
        render(json: @category, status: :ok)
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
