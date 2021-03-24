class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new 
    @task = Task.new
  end

  def create 
    @task = Task.new(task_params) # pass the form params to 
                                  # the method for saving
    if @task.save
      redirect_to @task
    else
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])

    if @task.update(task_params)
      redirect_to @task
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    
    redirect_to root_path
  end

  private # requires the fields to be completed 
          # and doesn't allow for malicious ingection of code
    def task_params
      params.require(:task).permit(:title, :body)
    end


  
  
end
