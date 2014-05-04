class ConsumptionsController < ApplicationController
  before_filter :authenticate

  # GET /consumptions
  # GET /consumptions.json
  def index
    @consumptions = current_user.consumptions.order('created_at DESC')
    @today        = @consumptions.where('consumed_at >= ?', Time.zone.now.beginning_of_day)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @consumptions }
    end
  end

  # GET /consumptions/1
  # GET /consumptions/1.json
  def show
    @consumption = Consumption.find(params[:id])
    redirect_to root_path unless @consumption.user_id == current_user.id

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @consumption }
    end
  end

  def heatmap
    hash = Hash.new
    consumptions = current_user.consumptions
    (1.year.ago.to_date).upto(Date.today).each do |date|
      count = consumptions.select{|c| c.consumed_at.to_date == date }.size
      hash.merge!(date.to_time.utc.to_i => count)
    end

    render json: hash
  end

  # GET /consumptions/new
  # GET /consumptions/new.json
  def new
    @consumption = Consumption.new
    @drinks = Drink.all.map { |d| [d.name, d.id.to_s ] }
    @default_drink = 0

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @consumption }
    end
  end

  # GET /consumptions/1/edit
  def edit
    @consumption = Consumption.find(params[:id])
    @drinks = Drink.all.map { |d| [d.name, d.id.to_s ] }
    @default_drink = @consumption.drink.id
  end

  # POST /consumptions
  # POST /consumptions.json
  def create
    @consumption = Consumption.new(params[:consumption])
    @consumption.drink_id = params[:drink_id].to_i
    @consumption.user_id = current_user.id

    respond_to do |format|
      if @consumption.save
        format.html { redirect_to @consumption, notice: 'Saved!' }
        format.json { render json: @consumption, status: :created, location: @consumption }
      else
        format.html { render action: "new" }
        format.json { render json: @consumption.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /consumptions/1
  # PUT /consumptions/1.json
  def update
    @consumption = Consumption.find(params[:id])

    respond_to do |format|
      if @consumption.update_attributes(params[:consumption])
        format.html { redirect_to @consumption, notice: 'Consumption was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @consumption.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consumptions/1
  # DELETE /consumptions/1.json
  def destroy
    @consumption = Consumption.find(params[:id])
    @consumption.destroy

    respond_to do |format|
      format.html { redirect_to consumptions_url }
      format.json { head :no_content }
    end
  end
end
