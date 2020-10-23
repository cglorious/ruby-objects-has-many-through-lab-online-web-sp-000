class Patient

  attr_accessor

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all

  end

end
