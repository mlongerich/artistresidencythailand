require 'rails_helper'

RSpec.feature 'Show a petition' do
  before do
    @petition = Petition.create(name: 'Applicant Name',
                                dob: '2017-11-09',
                                gender: 'female',
                                residency_type: 'engagement',
                                address: 'applicant address',
                                email: 'email@example.com',
                                phone: '123456789',
                                social_media: 'twitter',
                                practice_medium: 'paint',
                                artistic_statement: 'i like art',
                                history: 'past details',
                                offering: 'applicant offers',
                                references: 'reference 1',
                                start_date: '2017-11-09',
                                duration: '1 week',
                                intention: 'applicant intent')
  end

  scenario 'Alex wants to see a petition' do
    visit admin_path
    click_link @petition.name

    expect(page).to have_content(@petition.name)
    expect(page).to have_content(@petition.dob)
    expect(page).to have_content(@petition.gender.titleize)
    expect(page).to have_content(@petition.residency_type.titleize)
    expect(page).to have_content(@petition.address)
    expect(page).to have_content(@petition.email)
    expect(page).to have_content(@petition.phone)
    expect(page).to have_content(@petition.social_media)
    expect(page).to have_content(@petition.practice_medium)
    expect(page).to have_content(@petition.artistic_statement)
    expect(page).to have_content(@petition.history)
    expect(page).to have_content(@petition.offering)
    expect(page).to have_content(@petition.references)
    expect(page).to have_content(@petition.start_date)
    expect(page).to have_content(@petition.duration)
    expect(page).to have_content(@petition.intention)

    expect(current_path).to eq(petition_path(@petition))
  end
end
