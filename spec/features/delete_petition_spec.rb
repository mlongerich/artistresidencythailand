require 'rails_helper'

RSpec.feature 'Deleting an Application' do
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

  scenario 'Alex deletes an application' do
    visit admin_path

    click_link @petition.name
    click_link 'Delete Application'

    expect(page).to have_content('Application has been deleted')
    expect(current_path).to eq(admin_path)
  end
end
