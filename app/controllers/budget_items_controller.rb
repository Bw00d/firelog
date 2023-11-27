class BudgetItemsController < ApplicationController
    before_action :set_budget, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end


  def new
  end


  def edit
  end

  # POST /budget_items
  # POST /budget_items.json
  def create
    @budget = Budget.find(params[:budget_id])
    @budget_item = BudgetItem.new(budget_items_params)

    respond_to do |format|
      if @budget_item.save
        format.html { redirect_to @budget }
        format.json {}
      else
        format.html { render :index }
        format.json { render json: @budget_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /budgets/1
  # PATCH/PUT /budgets/1.json
  def update
    respond_to do |format|
      if @budget_item.update(budget_params)
        format.html { redirect_to @budget }
        format.json { }
      else
        format.html { redirect_to @budget }
        format.json { render json: @budget_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /budgets/1
  # DELETE /budgets/1.json
  def destroy
    @budget_item.destroy
    respond_to do |format|
      format.html { redirect_to budgets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_budget_item
      @budget_id = Budget.find(params[:id]).id
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def budget_items_params
      params.require(:budget_item).permit(:amount, :budget_id, :category_id, :description)
    end
end