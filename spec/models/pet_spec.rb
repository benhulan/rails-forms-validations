require 'rails_helper'

RSpec.describe Pet, type: :model do

  # setup
  before do
    pet_params = Hash.new
    pet_params[:name] = "Morocco"
    pet_params[:owner_id] = 10

    @badkitty = Pet.create(pet_params)
    
    pet_params[:species] = "Cat"

    @pet = Pet.create(pet_params)
  end

  describe "#new" do
    it "returns a new pet object" do
      expect @pet.should be_an_instance_of Pet  
    end

    it "returns the correct name" do
      @pet.name.should == "Morocco"
    end

    it "returns the correct owner_id" do
      @pet.owner_id.should == 10
    end

    it "returns the correct species" do
      @pet.species.should == "Cat"
    end

    it "does not have species" do
      @badkitty.species.should == nil
    end

    it "takes three parameters and returns a pet" do
      lambda {Pet.create("Madagascar", "Dog")}.should raise_exception ArgumentError
    end

  end

  # teardown is automatic
end
