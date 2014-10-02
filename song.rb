class Song

  def initialize(title, artist, audio)
    @title = title
    @artist = artist
    @audio = audio
  end

  def title
    return @title
  end

  def artist
    return @artist
  end

  def play
    `say #{@audio}`
  end

end

song = Song.new("Batman", "J B Johnson", "na na na na na na na na na na na na na na na na BATMAN!")
song.play

song = Song.new("Boogie Woogie", "ZZ Hopper", "Boogie woogie, boogie woogie, WHOA!")
song.play
