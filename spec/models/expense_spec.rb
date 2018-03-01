require 'rails_helper'

RSpec.describe Expense, type: :model do
  it { should respond_to :amount }
  it { should respond_to :date }
  it { should respond_to :category_id }
  it { should respond_to :vendor_id }
  it { should respond_to :comment }
  it { should respond_to :user_id }
end
