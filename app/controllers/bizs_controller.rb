class BizsController < ApplicationController
  # GET /bizs
  # GET /bizs.xml
  
  def index
    @bizs = Biz.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bizs }
    end
  end

  # GET /bizs/1
  # GET /bizs/1.xml
  def show
    @biz = Biz.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @biz }
    end
  end

  # GET /bizs/new
  # GET /bizs/new.xml
  def new
    @biz = Biz.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @biz }
    end
  end

  # GET /bizs/1/edit
  def edit
    @biz = Biz.find(params[:id])
  end

  # POST /bizs
  # POST /bizs.xml
  def create
    @biz = Biz.new(params[:biz])

    respond_to do |format|
      if @biz.save
        flash[:notice] = 'Biz was successfully created.'
        format.html { redirect_to(@biz) }
        format.xml  { render :xml => @biz, :status => :created, :location => @biz }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @biz.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bizs/1
  # PUT /bizs/1.xml
  def update
    @biz = Biz.find(params[:id])

    respond_to do |format|
      if @biz.update_attributes(params[:biz])
        flash[:notice] = 'Biz was successfully updated.'
        format.html { redirect_to(@biz) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @biz.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bizs/1
  # DELETE /bizs/1.xml
  def destroy
    @biz = Biz.find(params[:id])
    @biz.destroy

    respond_to do |format|
      format.html { redirect_to(bizs_url) }
      format.xml  { head :ok }
    end
  end
end
