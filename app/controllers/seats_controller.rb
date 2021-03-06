class SeatsController < ApplicationController

  # GET /seats
  # GET /seats.xml
  def index
    @seats = Seat.all
    @seat = Seat.new

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @seats }
    end
  end

  # GET /seats/1
  # GET /seats/1.xml
  def show
    @seat = Seat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @seat }
    end
  end

  # GET /seats/new
  # GET /seats/new.xml
  def new
    @seat = Seat.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @seat }
    end
  end

  # GET /seats/1/edit
  def edit
    @seat = Seat.find(params[:id])
    respond_to do |format|
        format.html { redirect_to(@seat, :notice => 'Seat was successfully created.') }
        format.js
    end
  end

  # POST /seats
  # POST /seats.xml
  def create
    @seat = Seat.new(params[:seat])
    if @seat.save
    respond_to do |format|
        format.html { redirect_to(@seat, :notice => 'Seat was successfully created.') }
        format.xml  { render :xml => @seat, :status => :created, :location => @seat }
        format.js
      end
      else
        respond_to do |format|
        format.html { render :action => "new" }
        format.xml  { render :xml => @seat.errors, :status => :unprocessable_entity }
        format.js
      end
    end
  end

  # PUT /seats/1
  # PUT /seats/1.xml
  def update
    @seat = Seat.find(params[:id])
	
	#@user = current_user
#if !(@seat.user_id == @user.id)

    respond_to do |format|
      if @seat.update_attributes(params[:seat])
        format.html { redirect_to(@seat, :notice => 'Seat was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @seat.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /seats/1
  # DELETE /seats/1.xml
  def destroy
    @seat = Seat.find(params[:id])
    @seat.destroy

    respond_to do |format|
      format.html { redirect_to(seats_url) }
      format.xml  { head :ok }
      format.js
    end
  end
end
