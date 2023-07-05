class TasksController < ApplicationController
before_action :set_task, only:%i[ show edit update destroy ]

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = current_user.tasks.build(task_params)
    if params[:back]
      render :new
    else
      if @task.save
        redirect_to tasks_path, notice: "タスクの登録が完了しました。"
      else
        render :new
      end
    end
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
    if @task.user == current_user
      render :edit
    else
      flash[:notice]= "権限がありません。"
      redirect_to tasks_path
    end
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to task_path, notice: "編集しました。"
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to task_path, notice: "削除しました。"
  end

  def confirm
    @task = current_user.tasks.build(task_params)
    render :new if @task.invalid?
  end

  def ensure_current_user
    if @current_user.id != prams[:id].to_i
      flash[:notice]= "権限がありません。"
      redirect_to user_path(@user.id)
    end
  end

  private

  def task_params
    params.require(:task).permit(:title, :content)
  end

  def set_task
    @task = Task.find(params[:id])
  end

  def set_confirmation
    @confirmation = Confirmation.find(params[:id])
  end
end
