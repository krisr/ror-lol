class MotdsController < ApplicationController
  # GET /motds
  # GET /motds.xml
  def index
    @motds = Motd.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @motds }
    end
  end

  # GET /motds/1
  # GET /motds/1.xml
  def show
    @motd = Motd.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @motd }
    end
  end

  # GET /motds/new
  # GET /motds/new.xml
  def new
    @motd = Motd.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @motd }
    end
  end

  # GET /motds/1/edit
  def edit
    @motd = Motd.find(params[:id])
  end

  # POST /motds
  # POST /motds.xml
  def create
    @motd = Motd.new(params[:motd])

    respond_to do |format|
      if @motd.save
        flash[:notice] = 'Motd was successfully created.'
        format.html { redirect_to(@motd) }
        format.xml  { render :xml => @motd, :status => :created, :location => @motd }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @motd.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /motds/1
  # PUT /motds/1.xml
  def update
    @motd = Motd.find(params[:id])

    respond_to do |format|
      if @motd.update_attributes(params[:motd])
        flash[:notice] = 'Motd was successfully updated.'
        format.html { redirect_to(@motd) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @motd.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /motds/1
  # DELETE /motds/1.xml
  def destroy
    @motd = Motd.find(params[:id])
    @motd.destroy

    respond_to do |format|
      format.html { redirect_to(motds_url) }
      format.xml  { head :ok }
    end
  end
end
