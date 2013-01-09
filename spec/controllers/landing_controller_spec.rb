require 'spec_helper'

describe LandingController do
  describe 'GET show' do

    context 'when there is an answer' do
      let!(:answer) { create :answer }

      it 'should redirect to the answer' do
        get :show
        response.should redirect_to [answer.game, answer]
      end
    end

    context 'when there is no answer' do
      it 'should render the landing show page' do
        get :show
        response.should render_template :show
      end
    end
  end
end
