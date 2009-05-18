class SlurpersController < ApplicationController
  # GET /slurpers
  # GET /slurpers.xml
  def index
    @slurpers = Slurper.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @slurpers }
    end
  end

  # GET /slurpers/1
  # GET /slurpers/1.xml
  def show
    @slurper = Slurper.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @slurper }
    end
  end

  # GET /slurpers/new
  # GET /slurpers/new.xml
  def new
    @slurper = Slurper.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @slurper }
    end
  end

  # GET /slurpers/1/edit
  def edit
    @slurper = Slurper.find(params[:id])
  end

  # POST /slurpers
  # POST /slurpers.xml
  def create
    @slurper = Slurper.new(params[:slurper])

    respond_to do |format|
      if @slurper.save
        flash[:notice] = 'Slurper was successfully created.'
        format.html { redirect_to(@slurper) }
        format.xml  { render :xml => @slurper, :status => :created, :location => @slurper }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @slurper.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /slurpers/1
  # PUT /slurpers/1.xml
  def update
    @slurper = Slurper.find(params[:id])

    respond_to do |format|
      if @slurper.update_attributes(params[:slurper])
        flash[:notice] = 'Slurper was successfully updated.'
        format.html { redirect_to(@slurper) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @slurper.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /slurpers/1
  # DELETE /slurpers/1.xml
  def destroy
    @slurper = Slurper.find(params[:id])
    @slurper.destroy

    respond_to do |format|
      format.html { redirect_to(slurpers_url) }
      format.xml  { head :ok }
    end
  end
end
