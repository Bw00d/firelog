require 'rails_helper'

RSpec.describe Payment, type: :model do
  it { should respond_to :name }
  it { should respond_to :logo }  
end
