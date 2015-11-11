require 'rails_helper'

RSpec.describe Pet, type: :model do

  # setup
  before do
    pet_params = Hash.new({name: "Morocco", owner_id: 10, species: "Cat"})

    @pet = Pet.create(pet_params)
  end

  describe "#new" do
    it "returns a new pet object" do
      expect @pet.should be_an_instance_of Pet  
    end

    it "belongs to owner" do
      expect @pet.owner_id.should be_a_valid_id
    end
  end

  # teardown is automatic
end
