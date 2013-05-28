class ResourcesController < ApplicationController
  before_filter :find_resource, :only => [:show, :edit, :update, :destroy]

  # GET /resources
  # GET /resources.xml
  def index
    @resources = Resource.all

    respond_to do |wants|
      wants.html # index.html.erb
      wants.xml  { render :xml => @resources }
    end
  end

  # GET /resources/1
  # GET /resources/1.xml
  def show
    respond_to do |wants|
      wants.html # show.html.erb
      wants.xml  { render :xml => @resource }
    end
  end

  # GET /resources/new
  # GET /resources/new.xml
  def new
    @resource = Resource.new

    respond_to do |wants|
      wants.html # new.html.erb
      wants.xml  { render :xml => @resource }
    end
  end

  # GET /resources/1/edit
  def edit
  end

  # POST /resources
  # POST /resources.xml
  def create
    @resource = Resource.new(params[:resource])

    respond_to do |wants|
      if @resource.save
        flash[:notice] = 'Resource was successfully created.'
        wants.html { redirect_to(@resource) }
        wants.xml  { render :xml => @resource, :status => :created, :location => @resource }
      else
        wants.html { render :action => "new" }
        wants.xml  { render :xml => @resource.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /resources/1
  # PUT /resources/1.xml
  def update
    respond_to do |wants|
      if @resource.update_attributes(params[:resource])
        flash[:notice] = 'Resource was successfully updated.'
        wants.html { redirect_to(@resource) }
        wants.xml  { head :ok }
      else
        wants.html { render :action => "edit" }
        wants.xml  { render :xml => @resource.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /resources/1
  # DELETE /resources/1.xml
  def destroy
    @resource.destroy

    respond_to do |wants|
      wants.html { redirect_to(resources_url) }
      wants.xml  { head :ok }
    end
  end

  private
    def find_resource
      @resource = Resource.find(params[:id])
    end

end
