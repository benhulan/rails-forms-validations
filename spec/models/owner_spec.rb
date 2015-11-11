require 'rails_helper'

RSpec.describe Owner, type: :model do

  before do
    owner_params = Hash.new
    owner_params[:name] = "Barack"
    @owner = Owner.create(owner_params)
  end

  describe "#new" do
    it "returns a new owner object" do
      @owner.should be_an_instance_of Owner
    end

  end

  # pending "add some examples to (or delete) #{__FILE__}"
end
