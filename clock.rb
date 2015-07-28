require 'clockwork'
require 'net/http'
require 'bobble'

module Clockwork
  every(2.minutes, 'monitor-failure') { Bobble.check("http://imqsrc/") }
  every(2.minutes, 'monitor-success') { Bobble.check("http://imqsrc/") }
end
