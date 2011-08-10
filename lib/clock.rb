require 'config/boot'
require 'config/environment'
require 'clockwork'

include Clockwork

every(1.hour, 'Queueing @ messages') {}