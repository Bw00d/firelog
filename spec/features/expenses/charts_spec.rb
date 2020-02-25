#Feature: 'Charts page'
#As a user
#I want to visit a chart page
#To see charts of my expenses
feature 'Charts page' do
  #As a signed in user
  #When I visit my chart page
  #It should have the right title
  scenario 'visit the chart page' do
    user = FactoryBot.create(:user)
    signin(user.email, user.password)
    visit root_path
    click_link 'Charts'
    expect(page).to have_title 'Firelog | Charts'
  end
end