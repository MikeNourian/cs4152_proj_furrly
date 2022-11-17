require 'rails_helper'

# CREATE,

# Update, 

# DELETE

RSpec.describe UsersController, type: :controller do

  describe "creates" do
    it "Creating User Info" do
      expect(User.where(:username => "bettythekitty")).to be_empty
      user1 = User.create([ # make sure this doesn't break
        { username: 'bettythekitty', password_digest: 'kittythebetty', session_token: "ABCIOJGEOIJG", created_at: '2022/12/01', updated_at: '2022/12/01'}
      ])
      # get :create, {:params => {:username => 'bettythekitty', :password_digest => 'kittythebetty'}}
    end
  end


end
