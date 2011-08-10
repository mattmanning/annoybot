class SeedAnnoyances < ActiveRecord::Migration
  def up
    [ "It is what it is.",
      "Are you happy with your long-distance provider?",
      "I'm a PC.",
      "We just went out there and gave it 110%.",
      "Nahmean?",
      "You betcha!",
      "I've got Bieber fever!" ].each do |phrase|
        Annoyance.create!(:words => phrase, :handle => 'mattmanning')
      end
  end

  def down
    #irreversable
  end
end
