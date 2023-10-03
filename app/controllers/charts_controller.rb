class ChartsController < ApplicationController

  def index

      @categories = current_user.categories.order('description ASC')
      @current_user_expenses = current_user.expenses
      @years =  @current_user_expenses.all.select("date").map{ |i| i.date.year }.uniq
      @expenses = current_user.expenses.where("extract(year  from date) = ? AND category_id =?", 
                                                params[:year], params[:category])
      @expenses_by_month = expenses_by_month(@expenses)
      @expenses_by_year = expenses_by_year(current_user.expenses.where(category_id: params[:category]))
    
      if params[:category]
        @category = Category.find(params[:category]).description  
      else
        @category = current_user.categories.first.description
      end  

    @display_expenses = @expenses.year(params[:year]).order("date DESC")
    
  end

  def expenses_by_month(expenses)
    summed = [['Jan', 0.00],['Feb', 0.00],['Mar', 0.00],['Apr', 0.00],['May', 0.00],['Jun', 0.00],
               ['Jul', 0.00],['Aug', 0.00],['Sep', 0.00],['Oct', 0.00],['Nov', 0.00],['Dec', 0.00]]  
    expenses.each do |e|
      summed[e.date.month - 1][1] += e.amount
    end
    summed
  end
  def expenses_by_year(expenses)
    years =  current_user.expenses.all.select("date").map{ |i| i.date.year }.uniq
    yearly_expenses = []
    years.each do |y|
      yearly_expenses << [y, 0.00]
    end

    expenses.each do |e|
      yearly_expenses.each do |y|
        if e.date.year == y[0]
          y[1] += e.amount
        end
      end
    end
    yearly_expenses
  end
end

