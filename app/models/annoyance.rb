class Annoyance < ActiveRecord::Base
  def self.random
    first :offset => rand(count)
  end
end
