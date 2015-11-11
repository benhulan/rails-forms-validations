class Pet < ActiveRecord::Base

  attr_accessor :name, :species

  belongs_to :owner
  validates_presence_of :name

end
