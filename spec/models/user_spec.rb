require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'Validations' do
    # validation examples here
    describe "Passwords" do

      it "must have password filled in" do
        @user = User.new(name: "Dylan", password_confirmation: 'xyz4', email: 'dp')
        expect(@user.save).to be false
      end
      it "must have password_confirmation filled in" do
        @user = User.new(name: "Dylan", password: 'xyz4', email: 'dp')
        expect(@user.save).to be false
      end
      it "should reject if passwords don't match" do
        @user = User.new(name: "Dylan", password: 'xyz4', password_confirmation: 'xyzb4', email: 'dp')
        expect(@user.save).to be false
      end
      it "should accept if passwords match" do
        @user = User.new(name: "Dylan", email: 'dp', password: 'xyz6', password_confirmation: 'xyz6')
        puts @user.errors[:message]
        expect(@user.save).to be true
      end
    end
  end

  describe '.authenticate_with_credentials' do
    # examples for this class method here

  end

end
