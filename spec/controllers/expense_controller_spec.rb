require 'rails_helper'

RSpec.describe ExpensesController, type: :controller do
 
  # First create a user
  
  
  let(:user) { FactoryBot.create :user }
  # This should return the minimal set of attributes required to create a valid
  # expense. As you add validations to expense, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    { amount: 3.25, user_id: user.id, date: Date.today, category_id: category.id }
  }

  let(:invalid_attributes) {
    { amount: nil, user_id: nil, category_id: nil }
  }
  before(:each) { login(:user) }
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ExpensesController. Be sure to keep this updated too.

  describe "GET #index" do
  let(:category) { FactoryBot.create :category }
    it "assigns all expenses as @Expenses" do
      expense = Expense.create! valid_attributes
      get :index, params: {}
      expect(assigns(:expenses)).to eq([expense])
    end
  end

  # describe "GET #new" do
  #   skip
  #   it "assigns a new expense as @expense" do
  #     get :new, params: {}
  #     expect(assigns(:expense)).to be_a_new(expense)
  #   end
  # end

  
  # describe "GET #edit" do
  #   skip
  #   it "assigns the requested expense as @expense" do
  #     expense = Expense.create! valid_attributes
  #     get :edit, params: {id: expense.to_param}
  #     expect(assigns(:expense)).to eq(expense)
  #   end
  # end
  
  # describe "POST #create" do
  #   skip
  #   context "with valid params" do
  #     it "creates a new expense" do
  #       expect {
  #         post :create, params: {expense: valid_attributes}
  #       }.to change(expense, :count).by(1)
  #     end

  #     it "assigns a newly created expense as @expense" do
  #       post :create, params: {expense: valid_attributes}
  #       expect(assigns(:expense)).to be_a(expense)
  #       expect(assigns(:expense)).to be_persisted
  #     end

  #     it "redirects to the created expense" do
  #       post :create, params: {expense: valid_attributes}
  #       expect(response).to redirect_to(expense.last)
  #     end
  #   end

  #   context "with invalid params" do
  #     it "assigns a newly created but unsaved expense as @expense" do
  #       post :create, params: {expense: invalid_attributes}
  #       expect(assigns(:expense)).to be_a_new(expense)
  #     end

  #     it "re-renders the 'new' template" do
  #       post :create, params: {expense: invalid_attributes}
  #       expect(response).to render_template("new")
  #     end
  #   end
  # end
  
  # describe "PUT #update" do
    
  #   context "with valid params" do
  #     let(:new_attributes) {
  #       skip("Add a hash of attributes valid for your model")
  #     }

  #     it "updates the requested expense" do
  #       expense = Expense.create! valid_attributes
  #       put :update, params: {id: expense.to_param, expense: new_attributes}
  #       expense.reload
  #       skip("Add assertions for updated state")
  #     end

  #     it "assigns the requested expense as @expense" do
  #       expense = Expense.create! valid_attributes
  #       put :update, params: {id: expense.to_param, expense: valid_attributes}
  #       expect(assigns(:expense)).to eq(expense)
  #     end

  #     it "redirects to the expense" do
  #       expense = Expense.create! valid_attributes
  #       put :update, params: {id: expense.to_param, expense: valid_attributes}
  #       expect(response).to redirect_to(expense)
  #     end
  #   end

  #   context "with invalid params" do
  #     it "assigns the expense as @expense" do
  #       expense = Expense.create! valid_attributes
  #       put :update, params: {id: expense.to_param, expense: invalid_attributes}
  #       expect(assigns(:expense)).to eq(expense)
  #     end

  #     it "re-renders the 'edit' template" do
  #       expense = Expense.create! valid_attributes
  #       put :update, params: {id: expense.to_param, expense: invalid_attributes}
  #       expect(response).to render_template("edit")
  #     end
  #   end
  # end
  
  # describe "DELETE #destroy" do
    
  #   it "destroys the requested expense" do
  #     expense = Expense.create! valid_attributes
  #     expect {
  #       delete :destroy, params: {id: expense.to_param}
  #     }.to change(expense, :count).by(-1)
  #   end

  #   it "redirects to the Expenses list" do
  #     expense = Expense.create! valid_attributes
  #     delete :destroy, params: {id: expense.to_param}
  #     expect(response).to redirect_to(Expenses_url)
  #   end
  # end

  private

  def login(user_factory_name)
    # The user is created in an instance variable to be accessible from
    # anywhere in the spec files.
    @current_user = FactoryBot.create(user_factory_name)
    # Required if using the "confirmable" module
    @request.env['devise.mapping'] = Devise.mappings[:user]
    sign_in @current_user
  end

end