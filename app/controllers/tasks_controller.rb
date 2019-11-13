class TasksController < ApplicationController

    def index
      tasks = Task.all
        render json: tasks.to_json(include: [:category])
    end

    def show
        task = Task.find(params[:id])
        render json: task.to_json(inlcude: [:category], except: [:updated_at, :created_at])
        # render json: {id: task.id, title: task.title, description: task.description, category_id: task.category_id }
    end

     def create
        @task = Task.create(task_params)
        render json: @task, status: :created

     end

     def destroy
      task = Task.find(params[:id])
      task.delete
     end


     private

     def task_params
        params.require(:task).permit(:title, :description, :category_id)
     end


end
