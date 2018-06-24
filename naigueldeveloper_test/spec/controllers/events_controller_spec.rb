require "rails_helper"

RSpec.describe EventsController, type: :controller do
  describe '#index' do
    context 'request events with id_issue' do
      let!(:event) { create(:event) }
      before do
        get :index, params: { id_issue: 2 }
      end
      it 'returns status 200' do
        expect(response).to be_success
      end
    end
  end
end
