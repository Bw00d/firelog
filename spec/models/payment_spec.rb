require 'rails_helper'

RSpec.describe Payment, type: :model do
  it { should respond_to :name }
  it { should respond_to :logo }

  it { should belong_to :expense }

  
end
