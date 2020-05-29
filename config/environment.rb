require 'bundler/setup'
require 'tty-prompt'


Bundler.require


require_all 'lib'

# pid = fork{exec ‘afplay’, “lib/GoalSirenProdigyMusic.mp3”} 

ActiveRecord::Base.logger = nil

