require 'rails_helper'

describe "to create a babysitter", :type => :feature do
  it 'I should be able to visit the homepage and see link for becoming a babysatter' do
  visit '/'
   expect(page).to have_content('Become a BabySATter')
   find_link('Become a BabySATter').click
end




  it 'should fill out form to create a account' do

    visit '/babysitters/new'
    fill_in('First name', with: "Stephanie")
    fill_in('Last name', with: "Smith")
    fill_in('City', with: "Gainesville")
    fill_in('Phone number', with: "321-555-5555")
    fill_in('Rating', with: 8)
    fill_in('Sat score', with: 103)
    find_button("Create Babysitter").click

  end
  it 'should see welcome message only after creating account' do
    visit '/babysitters/new'
    fill_in('First name', with: "Stephanie")
    fill_in('Last name', with: "Smith")
    fill_in('City', with: "Gainesville")
    fill_in('Phone number', with: "321-555-5555")
    fill_in('Rating', with: 8)
    fill_in('Sat score', with: 103)
    find_button("Create Babysitter").click
    expect(page).to have_content("Welcome Stephanie!")


  end
  it 'should validate that sat score was entered in form' do
    visit '/babysitters/new'
    fill_in('First name', with: "Stephanie")
    fill_in('Last name', with: "Smith")
    fill_in('City', with: "Gainesville")
    fill_in('Phone number', with: "321-555-5555")
    fill_in('Rating', with: 8)
    # fill_in('Sat score', with: 103)
    find_button("Create Babysitter").click
    expect(page).to have_content("You need to enter your SAT score!")

  end
  it 'should have live count of current babysitters'

end
