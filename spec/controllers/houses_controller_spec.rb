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

  context 'GET #new' do
    before { get :new }
    it     { is_expected.to render_template('new') }
  end

  context 'POST #create' do
    before do
      h = build(:house)
      a = build(:address, house: h)
      c = build(:checkbox, house: h)

      # BUG: It can save without address and checkbox attributes.
      post :create, params: {
        house: {
          rent: h.rent, deposit: h.deposit,
          preferred_gender: h.preferred_gender,
          address_attributes: {
            address_1: a.address_1, address_2: a.address_2,
            city: a.city, state: a.state, zip_code: a.zip_code
          },
          checkbox_attributes: {
            air_conditioning: c.air_conditioning,
            balcony: c.balcony, furnished: c.furnished,
            include_utility: c.include_utility,
            pets_allowed: c.pets_allowed,
            private_bathroom: c.private_bathroom,
            private_bedroom: c.private_bedroom,
            refrigerator: c.refrigerator,
            near_bus_line: c.near_bus_line,
            smoke_allowed: c.smoke_allowed,
          }
        }
      }
    end

    it { is_expected.to redirect_to house_path(House.first.id) }
  end

  context 'GET #edit' do
    before do
      h = create(:house)
      a = create(:address, house: h)
      c = create(:checkbox, house: h)

      get :edit, params: {
        id: h.id
      }
    end

    it { is_expected.to render_template :edit }
  end

  context 'PATCH/PUT #update'
  context 'DELETE #destroy'
end
