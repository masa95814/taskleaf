class TasksController < ApplicationController
  def index
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.mew(task_params)
    task.save!
    redirect_to task_url, notice: "タスク「#{task.name}」を登録しました。"
  end

  def edit
  end

  private

  def task_params
    param.require(:task).permit(:name, :description)
  end
end
