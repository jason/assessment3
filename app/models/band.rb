class Band < ActiveRecord::Base
  attr_accessible :name

  has_many :members, :class_name => "Artist"
  has_many :recordings
  has_many :performed_songs, :through => :recording, :source => :song

  def milking_the_remix_cow(song_name)
      self.
        .select("bands.name, COUNT (*) as recording_count")
        .joins(:recordings)
        .group("song_id")
        .having("recording_count > 1")
  end
end