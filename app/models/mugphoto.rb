class Mugphoto < ActiveRecord::Base
  attr_accessible :mugphoto
  belongs_to :mug  
  has_attached_file :mugphoto, :styles => { :thumb => "100x100#", :large => "360x480" }
end
