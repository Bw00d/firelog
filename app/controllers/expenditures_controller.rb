class ExpendituresController < ApplicationController
  before_action :set_expenditure, only: [:show, :edit, :update, :destroy]

  # GET /expenditures
  # GET /expenditures.json
  def index
    @expenditure = Expenditure.new
    @expenditures = Expenditure.all.order('due_date ASC')
  end

  # GET /expenditures/1
  # GET /expenditures/1.json
  def show
  end

  # GET /expenditures/new
  def new
    @expenditure = Expenditure.new
  end

  # GET /expenditures/1/edit
  def edit
  end

  # POST /expenditures
  # POST /expenditures.json
  def create
    @expenditure = Expenditure.new(expenditure_params)

    respond_to do |format|
      if @expenditure.save
        format.html { redirect_to :back }
        format.json { render :show, status: :created, location: @expenditure }
      else
        format.html { render :back,
          alert: "Oops, try that again. Enter due date, amount, and description." 
          }
        format.json { 
          render json: @expenditure.errors, 
          status: :unprocessable_entity 
          }
      end
    end
  end

  # PATCH/PUT /expenditures/1
  # PATCH/PUT /expenditures/1.json
  def update
    respond_to do |format|
      if @expenditure.update(expenditure_params)
        format.html { redirect_to expenditures_path }
        format.json { render :show, status: :ok, location: @expenditure }
      else
        format.html { render :edit }
        format.json { render json: @expenditure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expenditures/1
  # DELETE /expenditures/1.json
  def destroy
    @expenditure.destroy
    respond_to do |format|
      format.html { redirect_to expenditures_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expenditure
      @expenditure = Expenditure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expenditure_params
      params.require(:expenditure).permit(:amount, :due_date, :comment, :user_id, :description)
    end
end
