class TasksController < ApplicationController

  # GET /tasks
  def index
    @task = Task.new
    @tasks = Task.all
  end

  # POST /tasks
  def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Task was successfully created.' }
        format.json { render action: 'show', status: :created, location: @task }
      else
        format.html { render action: 'new' }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:name, :completion)
    end
end
