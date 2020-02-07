class ProjectionsController < ApplicationController
  before_action :set_projection, only: [:show, :edit, :update, :destroy]

  # GET /projections
  # GET /projections.json
  def index
    @user = current_user
    @projections = @user.projections.order(:due_date)
    @projection = Projection.new
  end

  # GET /projections/1
  # GET /projections/1.json
  def show
  end

  # GET /projections/new
  def new
    @projection = Projection.new
  end

  # GET /projections/1/edit
  def edit
  end

  # POST /projections
  # POST /projections.json
  def create
    @projection = Projection.new(projection_params.merge({user_id: current_user.id}))

    respond_to do |format|
      if @projection.save
        format.html { redirect_to projections_path }
        format.json { render :show, status: :created, location: @projection }
      else
        format.html { render :index }
        format.json { render json: @projection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projections/1
  # PATCH/PUT /projections/1.json
  def update
    respond_to do |format|
      if @projection.update(projection_params)
        format.html { redirect_to @projection, notice: 'Projection was successfully updated.' }
        format.json { render :show, status: :ok, location: @projection }
      else
        format.html { render :edit }
        format.json { render json: @projection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projections/1
  # DELETE /projections/1.json
  def destroy
    @projection.destroy
    respond_to do |format|
      format.html { redirect_to projections_url, notice: 'Projection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projection
      @projection = Projection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projection_params
      params.require(:projection).permit(:due_date, :user_id, :description, :amount, :cash)
    end
end
