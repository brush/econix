class SiftersController < ApplicationController
  # GET /sifters
  # GET /sifters.xml
  def index
    @sifters = Sifter.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sifters }
    end
  end

  # GET /sifters/1
  # GET /sifters/1.xml
  def show
    @sifter = Sifter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sifter }
    end
  end

  # GET /sifters/new
  # GET /sifters/new.xml
  def new
    @sifter = Sifter.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sifter }
    end
  end

  # GET /sifters/1/edit
  def edit
    @sifter = Sifter.find(params[:id])
  end

  # POST /sifters
  # POST /sifters.xml
  def create
    @sifter = Sifter.new(params[:sifter])

    respond_to do |format|
      if @sifter.save
        flash[:notice] = 'Sifter was successfully created.'
        format.html { redirect_to(@sifter) }
        format.xml  { render :xml => @sifter, :status => :created, :location => @sifter }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sifter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sifters/1
  # PUT /sifters/1.xml
  def update
    @sifter = Sifter.find(params[:id])

    respond_to do |format|
      if @sifter.update_attributes(params[:sifter])
        flash[:notice] = 'Sifter was successfully updated.'
        format.html { redirect_to(@sifter) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sifter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sifters/1
  # DELETE /sifters/1.xml
  def destroy
    @sifter = Sifter.find(params[:id])
    @sifter.destroy

    respond_to do |format|
      format.html { redirect_to(sifters_url) }
      format.xml  { head :ok }
    end
  end
end
