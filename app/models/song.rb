class Song < ActiveRecord::Base
  attr_accessible :name
  attr_accessible :artist_id
  has_one :author, :class_name => "Artist"
  has_many :recordings
  has_many :interpreters, :through => :recording, :source => :band

end
  