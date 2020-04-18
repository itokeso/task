class TasksController < ApplicationController

  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
  end


  private
  def todo_params
    params.require(:todo).permit(:title, :done)
  end
end
