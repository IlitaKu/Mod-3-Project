class TasksController < ApplicationController

    def index
        @tasks = Task.all
        render({json: @tasks, status: :ok})
    end

    def show
        @task = Task.find(params[:id])
        render(json: @task, status: :ok)
    end

     def create
        @task = Task.create(task_params)
        byebug
        render json: @task, status: :created

     end


     private

     def task_params
        params.require(:task).permit(:title, :text, :category_id)
     end


end
