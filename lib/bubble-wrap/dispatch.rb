require 'bubble-wrap/loader'

BW.require 'motion/dispatch.rb'
BW.require 'motion/dispatch/**/*.rb' do
  file('motion/dispatch.rb').depends_on Dir.glob('motion/dispatch/**/*.rb')
  file('motion/dispatch/timer.rb').depends_on 'motion/dispatch/eventable.rb'
  file('motion/dispatch/periodic_timer.rb').depends_on 'motion/dispatch/eventable.rb'
  file('motion/dispatch/deferrable.rb').depends_on ['motion/dispatch/timer.rb', 'motion/dispatch/future.rb']
  file('motion/dispatch/default_deferrable.rb').depends_on 'motion/dispatch/deferrable.rb'
end
