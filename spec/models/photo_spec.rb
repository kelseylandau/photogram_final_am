require 'rails_helper'

RSpec.describe Photo, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:owner) }

    it { should have_many(:comments) }

    it { should have_many(:likes) }

    end

    describe "InDirect Associations" do

    it { should have_many(:fans) }

    it { should have_many(:commenters) }

    it { should have_many(:feed_follower) }

    end

    describe "Validations" do

    it { should validate_presence_of(:image) }
      
    end
end
