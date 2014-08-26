class WeekplansController < ApplicationController
  before_action :set_weekplan, only: [:show, :edit, :update, :destroy]

  # GET /weekplans
  # GET /weekplans.json
  def index
    @weekplans = Weekplan.all
  end

  # GET /weekplans/1
  # GET /weekplans/1.json
  def show
  end

  # GET /weekplans/new
  def new
    @weekplan = Weekplan.new
  end

  # GET /weekplans/1/edit
  def edit
  end

  # POST /weekplans
  # POST /weekplans.json
  def create
    @weekplan = Weekplan.new(weekplan_params)

    respond_to do |format|
      if @weekplan.save
        format.html { redirect_to @weekplan, notice: 'Weekplan was successfully created.' }
        format.json { render action: 'show', status: :created, location: @weekplan }
      else
        format.html { render action: 'new' }
        format.json { render json: @weekplan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weekplans/1
  # PATCH/PUT /weekplans/1.json
  def update
    respond_to do |format|
      if @weekplan.update(weekplan_params)
        format.html { redirect_to @weekplan, notice: 'Weekplan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @weekplan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weekplans/1
  # DELETE /weekplans/1.json
  def destroy
    @weekplan.destroy
    respond_to do |format|
      format.html { redirect_to weekplans_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weekplan
      @weekplan = Weekplan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weekplan_params
      params.require(:weekplan).permit(:week, :plan)
    end
end
