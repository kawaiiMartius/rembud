class OrderTasksController < ApplicationController
  before_filter :load_parents
  before_filter :load_order_task, only: [:show, :edit, :update, :destroy]
  
  # GET /order_tasks
  # GET /order_tasks.json
  def index
    @order_tasks = @order.tasks

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @order_tasks }
    end
  end

  # GET /order_tasks/1
  # GET /order_tasks/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @order_task }
    end
  end

  # GET /order_tasks/new
  # GET /order_tasks/new.json
  def new
    @order_task = @order.order_tasks.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @order_task }
    end
  end

  # GET /order_tasks/1/edit
  def edit
    
  end

  # POST /order_tasks
  # POST /order_tasks.json
  def create
    @order_task = @order.order_tasks.create(params[:order_task])

    respond_to do |format|
      if @order_task.save
        format.html { redirect_to [@client, @order, @order_task], notice: 'Order task was successfully created.' }
        format.json { render json: @order_task, status: :created, location: @order_task }
      else
        format.html { render action: "new" }
        format.json { render json: @order_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /order_tasks/1
  # PUT /order_tasks/1.json
  def update
    respond_to do |format|
      if @order_task.update_attributes(params[:order_task])
        format.html { redirect_to [@client, @order, @order_task], notice: 'Order task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @order_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_tasks/1
  # DELETE /order_tasks/1.json
  def destroy
    @order_task.destroy

    respond_to do |format|
      format.html { redirect_to client_order_order_tasks_url }
      format.json { head :no_content }
    end
  end
  
  private
  
  def load_parents
    @client = Client.find(params[:client_id])
    @order = @client.orders.find(params[:order_id])
  end
  
  def load_order_task
    @order_task = @order.order_tasks.find(params[:id])
  end
end
