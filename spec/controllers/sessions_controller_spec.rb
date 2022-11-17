require 'rails_helper'

# CREATE,

# Update, 

# DELETE


RSpec.describe SessionsController, type: :controller do

  # describe "creates" do
  #   it "Create a session for a specific user" do

  #     expect(User.where(:username => "bettythekitty")).to be_empty
  #     user1 = User.new(
  #       { username: 'bettythekitty', password_digest: 'kittythebetty', session_token: "ABCIOJGEOIJG", created_at: '2022/12/01', updated_at: '2022/12/01'}
  #     )

  #     logger = Logger.new("my_log.txt")
  #     logger.info(User)
  #     logger.info(user1)
  

  #     get :create, {:params => {:user => user1}}
      
  #   end
  # end


  describe "destroy" do
    it "Destroy the section for current user" do
      get :destroy, {}
    end
  end

end