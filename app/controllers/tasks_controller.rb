class TasksController < ApplicationController

    def index
      tasks = Task.all
        render json: tasks.to_json(inlcude: [:category])
    end

    def show
        task = Task.find(id: params[:id])
        render json: task.to_json(inlcude: [:category], except: [:updated_at, :created_at])
        render json: {id: task.id, title: task.title, description: task.description, category_id: task.category_id }
    end

     def create
        @task = Task.create(task_params)
        byebug
        render json: @task, status: :created

     end


     private

     def task_params
        params.require(:task).permit(:title, :description, :category_id)
     end


end
