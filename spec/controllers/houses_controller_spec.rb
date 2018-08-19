require 'rails_helper'

RSpec.describe HousesController do
  context 'GET #index' do
    before { get :index }
    it     { is_expected.to render_template('index') }

    it 'assigns @houses' do
      create(:house)
      expect(assigns(:houses)).to eq(House.all)
    end
  end

  context 'GET #show' do
    before do
      h = build(:house)
      create(:address, house: h)
      create(:checkbox, house: h)
    end

    before { get :show, params: { id: House.first.id } }
    it     { is_expected.to render_template('show') }
  end

  context 'GET #new'
  context 'POST #create'
  context 'GET #edit'
  context 'PATCH/PUT #update'
  context 'DELETE #destroy'
end
