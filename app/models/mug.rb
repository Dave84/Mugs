class Mug < ActiveRecord::Base
  attr_accessible :name, :mugphotos_attributes
  has_many :mugphotos
  accepts_nested_attributes_for :mugphotos, :allow_destroy => true
end
