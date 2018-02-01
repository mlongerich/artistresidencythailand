require 'rails_helper'

RSpec.describe 'Petitions', type: :request do
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
  describe 'GET /petitions/:id' do
    context 'with existing article' do
      before { get "/petitions/#{@petition.id}" }

      it 'handles existing article' do
        expect(response.status).to eq(200)
      end
    end
    context 'with non-existing article' do
      before { get '/petitions/xxxx' }

      it 'handles non-existing article' do
        expect(response.status).to eq(302)
        flash_msg = 'The application you are looking for could not be found'
        expect(flash[:alert]).to eq(flash_msg)
      end
    end
  end
end
