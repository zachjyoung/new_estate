require 'spec_helper'

feature 'Add a building', %Q{
  As a real estate associate
  I want to record a building
  So that I can refer back to pertinent information
}do 
  
  #Acceptance Criteria 
  # I must specify a street address, city, state, and postal code
  # Only US states can be specified
  # I can optionally specify a description of the building
  # If I enter all of the required information in the required format, the building is recorded.
  # If I do not specify all of the required information in the required formats, the building is not recorded and I am presented with errors
  # Upon successfully creating a building, I am redirected so that I can record another building.

  let(:building) { FactoryGirl.build(:building) }

  scenario 'visit the homepage and add a buidling' do 
    visit '/'
    click_on 'Add a building'
    fill_in 'Street address', with: building.street_address
    fill_in 'City', with: building.city
    fill_in 'State', with: building.state
    fill_in 'Postal code', with: building.postal_code
    click_button 'Create'
    expect(page).to have_content('You have created a new building.')
  end
end 