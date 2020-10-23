class Patient

  attr_accessor

  @@all = []

  def initialize(name)
    
    @@all << self
  end

  def self.all

  end

end
