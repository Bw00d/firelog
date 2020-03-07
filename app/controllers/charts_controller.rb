class ChartsController < ApplicationController

  def index
    # if current_user
    #   @expenses = current_user.expenses.where('date >= ? AND date <= ?',
    #                                      DateTime.now.beginning_of_month,
    #                              DateTime.now.end_of_month).order("date DESC")
    #   @yearly_expenses = current_user.expenses.where('date >= ? AND date <= ?',
    #                                             DateTime.now.beginning_of_year,
    #                                             DateTime.now).order("date DESC")
    #   if params[:year] 
    #     @expenses = current_user.expenses.year(params[:year]).order("date DESC")
    #   end
    #   if params[:month] 
    #     @expenses = @expenses.month(params[:month]).order("date DESC")
    #   end
    #   unless params[:year] == "" || params[:year] == nil
    #     @yearly_expenses = current_user.expenses.year(params[:year]).order("date DESC")
    #   end
    #   @dates =  @yearly_expenses.all.select("date").map{ |i| i.date.month }.uniq
    #   @years =  current_user.expenses.all.select("date").map{ |i| i.date.year }.uniq
    # end
    @expenses = current_user.expenses
    # @monthly_expenses = @expenses.month(params[:month]).order("date DESC") if params[:month]
    @expenses_2018 = @expenses.year(2018).order("date DESC")
    @expenses_2019 = @expenses.year(2019).order("date DESC")
    @expenses_2020 = @expenses.year(2020).order("date DESC")

  end
end