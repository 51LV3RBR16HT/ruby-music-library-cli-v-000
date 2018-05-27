class Artist

  attr_accessor :name, :genre
  attr_reader :songs

  @@all =[]

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def genre=(genre)
    @genre = genre
  end

  def add_song(song)
    song.artist = self unless song.artist == self
    @songs << song unless @songs.include?(song)
  end

  def self.destroy_all
    self.all.clear
  end

  def save
    @@all << self
  end

  def self.create(name)
    artist = self.new(name)
    artist.save
    artist
  end

  def genres
    songs.each(&:genre)
      self.genre << song
    end
  end

end
