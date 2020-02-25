class ExpensesController < ApplicationController
  before_action :set_expense, only: [:show, :edit, :update, :destroy]
  before_action :set_categories, only: [:index]
  before_action :set_expenses, only: [:index, :charts]

  # GET /expenses
  # GET /expenses.json
  def index
    @expense = Expense.new
    if current_user
      @expenses = @current_user_expenses.where('date >= ? AND date <= ?',
                                         DateTime.now.beginning_of_month,
                                 DateTime.now.end_of_month).order("date DESC")
      @yearly_expenses = @current_user_expenses.where('date >= ? AND date <= ?',
                                                DateTime.now.beginning_of_year,
                                                DateTime.now).order("date DESC")
      if params[:year] 
        @expenses = @current_user_expenses.year(params[:year]).order("date DESC")
      end
      if params[:month] 
        @expenses = @expenses.month(params[:month]).order("date DESC")
      end
      unless params[:year] == "" || params[:year] == nil
        @yearly_expenses = @current_user_expenses.year(params[:year]).order("date DESC")
      end
      @dates =  @yearly_expenses.all.select("date").map{ |i| i.date.month }.uniq
      @years =  @current_user_expenses.all.select("date").map{ |i| i.date.year }.uniq
    end
    @payments = Payment.all
  end

  # GET /expenses/1
  # GET /expenses/1.json
  def show
  end

  # GET /expenses/new
  def new
    @expense = Expense.new
  end

  # GET /expenses/1/ediź
  def edit
  end

  # POST /expenses
  # POST /expenses.json
  def create
    @expense = Expense.new(expense_params.merge({user_id: current_user.id}))

    respond_to do |format|
      if @expense.save
        format.html { redirect_to :back }
        format.json { redirect_to :back, status: :created, location: @expense }
      else
        format.html { redirect_to :back,
          alert: "Oops, try that again. Choose date, amount, and category."
          }
        format.json {
          render json: @expense.errors,
          status: :unprocessable_entity
          }
      end
    end
  end

  # PATCH/PUT /expenses/1
  # PATCH/PUT /expenses/1.json
  def update
    respond_to do |format|
      if @expense.update(expense_params)
        format.html { render :index }
        format.json { render :show, status: :ok, location: @expense }
      else
        format.html { render :edit }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expenses/1
  # DELETE /expenses/1.json
  def destroy
    @expense.destroy
    respond_to do |format|
      format.html { redirect_to expenses_url }
      format.json { head :no_content }
    end
  end

  def selected_month
    @selected = Expense.where('date >= ? AND date <= ?', DateTime.now.beginning_of_month, DateTime.now.end_of_month).order("date DESC")
    respond_to do |format|
        format.js
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:amount, :date, :category_id, :vendor_id, :user_id, :comment, :payment_id)
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_expense
    @expense = Expense.find(params[:id])
  end

  def set_categories
    if current_user
      @categories = current_user.categories.order('description ASC')
    else
      @categories = []
    end
    @category = Category.new
  end

  def set_expenses
    if current_user
      @current_user_expenses = current_user.expenses
    end
  end
end
