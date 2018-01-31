require 'rails_helper'

RSpec.feature 'Submitting Applications'  do
  scenario 'A potential artist residency submits an application' do
    # this is for successful submit, what about unsuccessful submit?
    visit '/'
    click_link 'Application Form'
    fill_in 'Name', with: 'Michael'
    fill_in 'Date of Birth', with: '1 January 1980'
    select 'Male', from: 'Gender'
    select 'Engagement', from: 'Residency type'
    fill_in 'Preferred Start Date', with: '1 April 2018'
    fill_in 'Duration Preference', with: '2 weeks'
    fill_in 'Address', with: '600 Amazing Street, Chiang Mai, TH 50000'
    fill_in 'Email', with: 'michael@example.com'
    fill_in 'Phone', with: '0912345678'
    fill_in 'Link to website, social media (Instagram, Twitter, Facebook, etc.) and/or digital portfolio', with: 'michael.example.com'
    fill_in 'Describe your artistic practice and primary medium', with: 'Magic'
    fill_in 'Please provide a brief artist statement', with: 'This is my brief statement'
    fill_in 'Please give an overview of any previous workshop, or master class delivery experience', with: 'Taught at Zoe'
    fill_in 'Please give an overview of intended studio work and / or artistic exploration for your residency', with: 'Exploration of new ideas'
    fill_in 'Please give an overview of the workshop, skills and or master class sessions that you would be willing to offer, as well as the age ranges you are comfortable with, or would like experience delivering to (our young people engaging with this programme range from 4 – 18 years)', with: 'Dramatic Performing Arts, Story / Plot Creation, Stage Presence, Confidence Building, Creativity'
    fill_in 'Please provide contact details for x 2 references and list any other relevant information that supports your residency application', with: 'Reference 1, Reference 2'
    click_button 'Submit Application'
    expect(page).to have_content('Application was successfully submitted')
    expect(page.current_path).to eq(root_path)
  end

  scenario 'A potential artist resident fails to submit an application' do
    visit '/'
    click_link 'Application Form'
    fill_in 'Name', with: ''
    fill_in 'Date of Birth', with: ''
    select 'Select Gender', from: 'Gender'
    select 'Select Type', from: 'Residency type'
    fill_in 'Preferred Start Date', with: ''
    fill_in 'Duration Preference', with: ''
    fill_in 'Address', with: ''
    fill_in 'Email', with: ''
    fill_in 'Phone', with: ''
    fill_in 'Link to website, social media (Instagram, Twitter, Facebook, etc.) and/or digital portfolio', with: ''
    fill_in 'Describe your artistic practice and primary medium', with: ''
    fill_in 'Please provide a brief artist statement', with: ''
    fill_in 'Please give an overview of any previous workshop, or master class delivery experience', with: ''
    fill_in 'Please give an overview of intended studio work and / or artistic exploration for your residency', with: ''
    fill_in 'Please give an overview of the workshop, skills and or master class sessions that you would be willing to offer, as well as the age ranges you are comfortable with, or would like experience delivering to (our young people engaging with this programme range from 4 – 18 years)', with: ''
    fill_in 'Please provide contact details for x 2 references and list any other relevant information that supports your residency application', with: ''
    click_button 'Submit Application'
    expect(page).to have_content('Application failed to submit')

    expect(page).to have_content("Name can't be blank")
    expect(page).to have_content("Date of birth can't be blank")
    expect(page).to have_content("Gender can't be blank")
    expect(page).to have_content("Residency type can't be blank")
    expect(page).to have_content("Preferred start date can't be blank")
    expect(page).to have_content("Duration can't be blank")
    expect(page).to have_content("Address can't be blank")
    expect(page).to have_content("Email can't be blank")
    expect(page).to have_content("Phone can't be blank")
    expect(page).to have_content("Social media can't be blank")
    expect(page).to have_content("Medium can't be blank")
    expect(page).to have_content("Artistic statement can't be blank")
    expect(page).to have_content("Experience can't be blank")
    expect(page).to have_content("Intended work can't be blank")
    expect(page).to have_content("Offering can't be blank")
    expect(page).to have_content("References can't be blank")
  end
end
