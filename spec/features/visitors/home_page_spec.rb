# Feature: Home page
#   As a visitor
#   I want to visit a home page
#   So I can learn more about the website
feature 'Home page' do

  # Scenario: Visit the home page
  #   Given I am a visitor
  #   When I visit the home page
  #   Then I see "Home" in the title
  scenario 'visit the home page' do
    visit root_path
    expect(page).to have_title 'Home'
  end
  # Scenario: Visit the home page without signing in
  #   Given I am a visitor
  #   When I visit the home page
  #   Then I see "Get Started" 
  scenario 'when visiting the home page and not signed in' do
  	visit root_path
    expect(page).to have_content 'Get Started'
    expect(page).not_to have_content 'Add'
end

end
