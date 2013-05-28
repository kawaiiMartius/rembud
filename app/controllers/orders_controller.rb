class OrdersController < ApplicationController
  
  before_filter :load_parents
  
  # GET /orders
  # GET /orders.json
  def index
    @orders = @client.orders.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orders }
    end
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @order = @client.orders.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @order }
    end
  end

  # GET /orders/new
  # GET /orders/new.json
  def new
    @order = @client.orders.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @order }
    end
  end

  # GET /orders/1/edit
  def edit
    @order = @client.orders.find(params[:id])
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = @client.orders.new(params[:order])

    respond_to do |format|
      if @order.save
        format.html { redirect_to [@client, @order],
          notice: "#{t :created, model: Order.model_name.human, scope: [:activerecord, :notices] }"
        }
        format.json { render json: @order, status: :created, location: @order }
      else
        format.html { render action: "new" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /orders/1
  # PUT /orders/1.json
  def update
    @order = Order.find(params[:id])

    respond_to do |format|
      if @order.update_attributes(params[:order])
        format.html { redirect_to [@client, @order],
          notice: "#{t :updated, model: Order.model_name.human, scope: [:activerecord, :notices] }"
        }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order = @client.orders.find(params[:id])
    @order.destroy

    respond_to do |format|
      format.html { redirect_to client_orders_url }
      format.json { head :no_content }
    end
  end
  
  private
  
  def load_parents
    @client = Client.find(params[:client_id])
  end
end
