class TasksController < ApplicationController

  def index
    @todos = Todo.all
  end
end
