require 'rails_helper'


RSpec.describe CatRentalRequestsController, type: :controller do

  describe "creates" do
    it "Creating cats rental request" do
      expect(CatRentalRequest.where(:cat_id => "12345")).to be_empty
      get :create, {:params => {:cat_id => '12345', :start_date => '2022/01/01', :end_date => '2022/04/01', :status => 'PENDING', :created_at => '2022/25/12', :updated_at => '2022/25/12', :user_id => "4556"}}
      
    
    end
  end

  describe "new" do
    it "New cat rental requests " do
      get :new, {:params =>
        {:cat_id => '12345', :start_date => '2022/01/01', :end_date => '2022/04/01', :status => 'PENDING', :created_at => '2022/25/12', :updated_at => '2022/25/12', :user_id => "4556"}
      }
      
    end
  end

  describe "approve" do
    it "Approve a cat rental request" do
      expect(CatRentalRequest.where(:cat_id => "12345")).to be_empty

      get :approve, {:params => {:id => '12345'}}
    end
  end


  describe "deny" do
    it "Deny a cat rental request" do
      expect(CatRentalRequest.where(:cat_id => "12345")).to be_empty

      get :deny, {:params => {:id => '12345'}}
    end
  end



end
