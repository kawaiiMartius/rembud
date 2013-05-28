class MaterialsController < ApplicationController
  before_filter :find_material, only: [:show, :edit, :update, :destroy]
  
  # GET /materials
  # GET /materials.json
  def index
    @materials = Material.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @materials }
    end
  end

  # GET /materials/1
  # GET /materials/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @material }
    end
  end

  # GET /materials/new
  # GET /materials/new.json
  def new
    @material = Material.new
    @material.build_resource

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @material }
    end
  end

  # GET /materials/1/edit
  def edit

  end

  # POST /materials
  # POST /materials.json
  def create
    @material = Material.new(params[:material])
    
    respond_to do |format|
      if @material.save
        format.html { redirect_to @material,
                      notice: "#{t :created, model: Material.model_name.human, scope: [:activerecord, :notices] }"
        }
        format.json { render json: @material, status: :created, location: @material }
      else
        format.html { render action: "new" }
        format.json { render json: @material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /materials/1
  # PUT /materials/1.json
  def update
    respond_to do |format|
      if @material.update_attributes(params[:material])
        format.html { redirect_to @material,
                      notice: "#{t :updated, model: Material.model_name.human, scope: [:activerecord, :notices] }"
        }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materials/1
  # DELETE /materials/1.json
  def destroy
    @material.destroy

    respond_to do |format|
      format.html { redirect_to materials_url }
      format.json { head :no_content }
    end
  end
  
  private
  
  def find_material
    @material = Material.find(params[:id])
    @resource = @material.resource
  end
end
