require 'rails_helper'

# CREATE,

# Update, 

# DELETE


RSpec.describe CatsController, type: :controller do

  # Cat.create([
  #   { name: 'Frodo', color: 'ginger', birth_date: '2016/01/01', sex: 'M', description: 'From the Shire.' },
  #   { name: 'Bilbo', color: 'black', birth_date: '2010/08/07', sex: 'F', description: 'Old but sweet' },
  #   { name: 'Xanadu', color: 'blue', birth_date: '2015/07/25', sex: 'F', description: 'Sassy and cute' }
  # ])

  describe "creates" do
    it "Creating cats with valid parameters" do
      expect(Cat.where(:name => "Gustav")).to be_empty
      get :create, {:params => {:name => 'Gustav', :color => 'ginger', :birth_date => '2022/01/01', :sex => 'M', :description => 'Cutest kitty', :image_url => 'https://i.postimg.cc/vHgqcMJ8/profile1.jpg'}} # make sure image_url is in the correct order
      # cat = Cat.create(id: '2345', :name => 'Gustav', :color => 'ginger', :birth_date => '2022/01/01', :sex => 'M', :description => 'Cutest kitty', :image_url => 'https://i.postimg.cc/vHgqcMJ8/profile1.jpg', :created_at => '2022/05/01', :updated_at => '2022/05/01', :user_id => '3456')
      # expect(Cat.where(:name => "Gustav")).to exist
      # expect(response).to redirect_to "/catsitters"
      # Cat.find_by(:name => "Gustav").destroy
    end
  end

  describe "updates" do
    it "Updating cat's valid attributes" do
      cat = Cat.create(id: '2345', :name => 'Gustav', :color => 'ginger', :birth_date => '2022/01/01', :sex => 'M', :description => 'Cutest kitty', :image_url => 'https://i.postimg.cc/vHgqcMJ8/profile1.jpg', :created_at => '2022/05/01', :updated_at => '2022/05/01', :user_id => '3456')

      get :update, {:params =>
        {:id => cat.id,  :image_url => "https://i.postimg.cc/vHgqcMJ8/profile2.jpg"}
      }
      cat.destroy
    end
  end


  describe "show" do
    it "Showing a specific cat" do
      cat = Cat.create(id: '2345', :name => 'Gustav', :color => 'ginger', :birth_date => '2022/01/01', :sex => 'M', :description => 'Cutest kitty', :image_url => 'https://i.postimg.cc/vHgqcMJ8/profile1.jpg', :created_at => '2022/05/01', :updated_at => '2022/05/01', :user_id => '3456')

      get :show, {:params => # go to show the cat
        {:id => cat.id}
      }

      cat.destroy
    end
  end



end