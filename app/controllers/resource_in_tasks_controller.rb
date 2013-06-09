class ResourceInTasksController < ApplicationController
  before_filter :load_parents
  before_filter :load_resource_in_task, only: [:show, :edit, :update, :destroy]
  
  # GET /resource_in_tasks
  # GET /resource_in_tasks.json
  def index
    @resource_in_tasks = @task.resource_in_tasks

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @resource_in_tasks }
    end
  end

  # GET /resource_in_tasks/1
  # GET /resource_in_tasks/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @resource_in_task }
    end
  end

  # GET /resource_in_tasks/new
  # GET /resource_in_tasks/new.json
  def new
    @resource_in_task = @task.resource_in_tasks.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @resource_in_task }
    end
  end

  # GET /resource_in_tasks/1/edit
  def edit
    
  end

  # POST /resource_in_tasks
  # POST /resource_in_tasks.json
  def create
    @resource_in_task = @task.resource_in_tasks.create(params[:resource_in_task])

    respond_to do |format|
      if @resource_in_task.save
        format.html { redirect_to task_resource_in_task_url, notice: 'Resource in task was successfully created.' }
        format.json { render json: @resource_in_task, status: :created, location: @resource_in_task }
      else
        format.html { render action: "new" }
        format.json { render json: @resource_in_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /resource_in_tasks/1
  # PUT /resource_in_tasks/1.json
  def update
    respond_to do |format|
      if @resource_in_task.update_attributes(params[:resource_in_task])
        format.html { redirect_to task_resource_in_task_url, notice: 'Resource in task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @resource_in_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resource_in_tasks/1
  # DELETE /resource_in_tasks/1.json
  def destroy
    @resource_in_task.destroy

    respond_to do |format|
      format.html { redirect_to task_resource_in_tasks_url }
      format.json { head :no_content }
    end
  end
  
  private
  
  def load_parents
    @task = Task.find params[:task_id]
  end
  
  def load_resource_in_task
    @resource_in_task = @task.resource_in_tasks.find params[:id]
  end
end
