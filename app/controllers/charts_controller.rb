class ChartsController < ApplicationController

  def index
    @expenses = current_user.expenses.all
  end
end