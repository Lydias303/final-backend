require 'rails_helper'

RSpec.describe Api::V1::ListsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "can create a new list" do
      post :create, list: { title: "Work out"}

      expect(List.count).to eq(1)
    end
  end

  describe "DELETE" do
    it "can delete a list" do
      list = create(:list)
      expect(List.count).to eq(1)
      delete :destroy, id: list.id

      expect(List.count).to eq(0)
    end
  end


    describe "PUT #update" do
      it "can delete a list" do
        list = create(:list)
        expect(List.count).to eq(1)
        expect(list.title).to eq("Grocery Shopping")
        put :update, id: list.id, list: {title: "Clean up"}

        updated_list = List.first
        expect(updated_list.title).to eq("Clean up")
      end
    end
end
