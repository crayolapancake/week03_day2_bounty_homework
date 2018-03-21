require('pry')
require_relative('./bounty_models/bounty')

options_hash = {'name' => 'Zaphod Beeblebrox', 'value' => '9900000', 'location' => 'Betelgeuse', 'weapon' => ' Pan Galactic Gargle Blaster'}
bounty1 = Bounty.new(options_hash)


all_bounties = Bounty.all()
p all_bounties
puts ""
