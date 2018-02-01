require 'rails_helper'

RSpec.feature 'Editing a petition' do
  before do
    @petition = Petition.create(name: 'Applicant Name', dob: '2017-11-09',
                                gender: 'female',
                                residency_type: 'engagement',
                                address: 'applicant address',
                                email: 'email@example.com',
                                phone: '123456789', social_media: 'twitter',
                                practice_medium: 'paint',
                                artistic_statement: 'i like art',
                                history: 'past details',
                                offering: 'applicant offers',
                                references: 'reference 1',
                                start_date: '2017-11-09', duration: '1 week',
                                intention: 'applicant intent')
  end

  scenario 'Alex updates an application' do
    visit admin_path

    click_link @petition.name
    click_link 'Edit Application'

    fill_in 'Name', with: 'Updated applicant name'
    click_button 'Update Application'

    expect(page).to have_content('Application was successfully updated')
    expect(page.current_path).to eq(petition_path(@petition))
  end

  scenario 'Alex fails to update an application' do
    visit admin_path

    click_link @petition.name
    click_link 'Edit Application'

    fill_in 'Name', with: ''
    click_button 'Update Application'

    expect(page).to have_content('Application has not been updated')
    expect(current_path).to eq(petition_path(@petition))
  end
end
