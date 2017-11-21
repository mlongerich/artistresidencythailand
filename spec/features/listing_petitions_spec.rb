require "rails_helper"

RSpec.feature "Listing Petition" do

  before do
    @petition1 = Petition.create(name: "Applicant Name", dob: "2017-11-09", gender: "female", residency_type: "engagement", address: "applicant address", email: "email@example.com", phone: "123456789", social_media: "twitter", practice_medium: "paint", artistic_statement: "i like art", history: "past details", offering: "applicant offers", references: "reference 1", start_date: "2017-11-09", duration: "1 week", intention: "applicant intent")
    @petition2 = Petition.create(name: "Different Name", dob: "2016-10-10", gender: "male", residency_type: "engagement", address: "different adress", email: "different_email@example.com", phone: "987654321", social_media: "facebook", practice_medium: "dance", artistic_statement: "i like to dance", history: "different past details", offering: "different offer", references: "reference 2", start_date: "2016-02-10", duration: "2 month", intention: "different intent")
  end

  scenario "Alex lists all articles" do
    visit '/admin'

    expect(page).to have_link(@petition1.name)
    expect(page).to have_link(@petition2.name)
    expect(page).to have_content(@petition1.gender)
    expect(page).to have_content(@petition1.residency_type)
    expect(page).to have_content(@petition1.email)
    expect(page).to have_content(@petition1.phone)
    expect(page).to have_content(@petition1.practice_medium)
    expect(page).to have_content(@petition1.start_date)
    expect(page).to have_content(@petition1.duration)
    expect(page).to have_content(@petition2.gender)
    expect(page).to have_content(@petition2.residency_type)
    expect(page).to have_content(@petition2.email)
    expect(page).to have_content(@petition2.phone)
    expect(page).to have_content(@petition2.practice_medium)
    expect(page).to have_content(@petition2.start_date)
    expect(page).to have_content(@petition2.duration)

  end
end
