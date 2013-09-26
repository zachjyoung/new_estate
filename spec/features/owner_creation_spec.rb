require 'spec_helper'

feature 'Add a building owner', %Q{
  As a real estate associate
  I want to record a building owner
  So that I can keep track of our relationships with owners
}do 
  
  #Acceptance Criteria 
  # I must specify a first name, last name, and email address
  # I can optionally specify a company name
  # If I do not specify the required information, I am presented with errors
  # If I specify the required information, the owner is recorded and I am redirected to enter another new owner

  let(:owner) { FactoryGirl.build(:owner) } 

  scenario 'visit the homepage and add a owner' do 
    visit '/'
    click_on 'Add a owner'
    fill_in 'First name', with: owner.first_name
    fill_in 'Last name', with: owner.last_name
    fill_in 'Email', with: owner.email
    fill_in 'Company', with: owner.company
    click_button 'Create'
    expect(page).to have_content('You have created a new owner.')
  end 
end