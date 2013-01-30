class Artist < ActiveRecord::Base
  attr_accessible :name
  belongs_to :member, :class_name => "Band"
  has_many :authored_songs, :class_name => "Song"

  def self.songs_authored
      self
      .select("artists.name, songs.name")
      .joins(:authored_songs)
  end
end
